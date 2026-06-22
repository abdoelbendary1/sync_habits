import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sync_habits/core/error/failures.dart';
import 'package:sync_habits/features/home/domain/entities/habit_entity.dart';
import 'package:sync_habits/features/home/domain/usecases/add_habit.dart';
import 'package:sync_habits/features/home/domain/usecases/delete_habit.dart';
import 'package:sync_habits/features/home/domain/usecases/get_today_habits.dart';
import 'package:sync_habits/features/home/domain/usecases/toogle_habit_completion.dart';
import 'package:sync_habits/features/home/domain/usecases/watch_habits.dart';

part 'habits_event.dart';
part 'habits_state.dart';
part 'habits_bloc.freezed.dart';

@injectable
class HabitsBloc extends Bloc<HabitsEvent, HabitsState> {
  GetTodayHabits getTodayHabits;
  AddHabit addHabit;
  DeleteHabit deleteHabit;
  ToggleHabitCompletion toggleHabitCompletion;
  WatchHabitsStream watchHabitsStream;
  HabitsBloc(
    this.getTodayHabits,
    this.addHabit,
    this.deleteHabit,
    this.toggleHabitCompletion,
    this.watchHabitsStream,
  ) : super(_Initial()) {
    on<_Started>(_onStarted);
    on<_GetHabits>(_onGetHabits);
    on<_WatchHabits>(_onWatchHabits);
    on<_CreateHabit>(_onCreateHabit);
    on<_UpdateHabit>(_onUpdateHabit);
    on<_DeleteHabit>(_onDeleteHabit);
    //Force toggle events to process sequentially, preventing race conditions
    on<_ToggleHabitCompletion>(
      _onToggleHabitCompletion,
      transformer: sequential(),
    );
    on<_ReorderHabits>(_onReorderHabits);
    on<_SyncHabitsWithServer>(_onSyncHabitsWithServer);
    on<_SwipeCard>(_onSwipeCard, transformer: sequential());
  }

  FutureOr<void> _onStarted(_Started event, Emitter<HabitsState> emit) {
    emit(const HabitsState.initial());
  }

  FutureOr<void> _onGetHabits(
    _GetHabits event,
    Emitter<HabitsState> emit,
  ) async {
    emit(const HabitsState.loading());
    final Either<Failure, List<HabitEntity>> result = await getTodayHabits
        .call();
    result.fold(
      (failure) => emit(HabitsState.failure(failure.toString())),
      (habits) => emit(
        HabitsState.success(
          habits: habits,
          completedHabits: habits
              .where((habit) => habit.isCompletedToday!)
              .toList(),
          uncompletedHabits: habits
              .where((habit) => !habit.isCompletedToday!)
              .toList(),
        ),
      ),
    );
  }

  FutureOr<void> _onCreateHabit(
    _CreateHabit event,
    Emitter<HabitsState> emit,
  ) {}

  FutureOr<void> _onUpdateHabit(
    _UpdateHabit event,
    Emitter<HabitsState> emit,
  ) {}

  FutureOr<void> _onDeleteHabit(_DeleteHabit event, Emitter<HabitsState> emit) {
    deleteHabit.call(event.habit.id!);
  }

  Future<void> _onToggleHabitCompletion(
    _ToggleHabitCompletion event,
    Emitter<HabitsState> emit,
  ) async {
    // 1. Check if we are currently in a success state so we have habits to toggle
    if (state is! _Success) return;

    final currentState = state as _Success;

    // 2. Map through the existing habits and flip the isCompletedToday flag for the target habit
    final updatedHabits = currentState.habits.map((habit) {
      if (habit.id == event.habitId) {
        // Assuming your HabitEntity has a copyWith method
        return habit.copyWith(
          isCompletedToday: !(habit.isCompletedToday ?? false),
        );
      }
      return habit;
    }).toList();

    // 3. Re-calculate your computed lists based on your Freezed state requirements
    final completed = updatedHabits
        .where((h) => h.isCompletedToday == true)
        .toList();
    final uncompleted = updatedHabits
        .where((h) => h.isCompletedToday != true)
        .toList();

    // 4. EMIT IMMEDIATELY so the UI checks the box instantly
    emit(
      HabitsState.success(
        habits: updatedHabits,
        completedHabits: completed,
        uncompletedHabits: uncompleted,
      ),
    );

    try {
      // 5. Await the actual database side-effect in the background
      // If this returns an Either<Failure, void>, you can handle a rollback on failure
      await toggleHabitCompletion.call(event.habitId);
    } catch (error) {
      // Optional: If the database write completely crashes, rollback to original state or emit failure
      emit(HabitsState.failure("Failed to save habit status."));
    }
  }

  FutureOr<void> _onReorderHabits(
    _ReorderHabits event,
    Emitter<HabitsState> emit,
  ) {}

  FutureOr<void> _onWatchHabits(event, Emitter<HabitsState> emit) async {
    final Stream<Either<Failure, List<HabitEntity>>> habitsStream =
        watchHabitsStream();

    // await emit.forEach keeps the handler open and listens to the stream automatically
    await emit.forEach<Either<Failure, List<HabitEntity>>>(
      habitsStream,
      onData: (eitherResult) {
        return eitherResult.fold(
          (failure) => HabitsState.failure(failure.toString()),
          (habitsList) => HabitsState.success(
            habits: habitsList,
            completedHabits: habitsList
                .where((habit) => habit.isCompletedToday!)
                .toList(),
            uncompletedHabits: habitsList
                .where((habit) => !habit.isCompletedToday!)
                .toList(),
          ),
        );
      },
      onError: (error, stackTrace) {
        return HabitsState.failure(error.toString());
      },
    );
  }

  FutureOr<void> _onSyncHabitsWithServer(event, Emitter<HabitsState> emit) {}

  FutureOr<void> _onSwipeCard(dynamic event, Emitter<HabitsState> emit) async {
    if (state is! _Success) return;

    final currentState = state as _Success;

    final updatedHabits = currentState.habits;
    final completed = updatedHabits
        .where((h) => h.isCompletedToday == true)
        .toList();
    final uncompleted = updatedHabits
        .where((h) => h.isCompletedToday != true)
        .toList();

    emit(
      HabitsState.success(
        habits: updatedHabits,
        completedHabits: completed,
        uncompletedHabits: uncompleted,
        // 💡 Change event.cardBorderRadius to event.borderRadius
        cardBorderRadius: event.borderRadius,
      ),
    );
  }
}
