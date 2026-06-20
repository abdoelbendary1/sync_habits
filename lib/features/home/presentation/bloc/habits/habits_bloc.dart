import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sync_habits/core/error/failures.dart';
import 'package:sync_habits/features/home/data/models/habit_model.dart';
import 'package:sync_habits/features/home/domain/entities/habit_entity.dart';
import 'package:sync_habits/features/home/domain/usecases/add_habit.dart';
import 'package:sync_habits/features/home/domain/usecases/delete_habit.dart';
import 'package:sync_habits/features/home/domain/usecases/get_today_habits.dart';
import 'package:sync_habits/features/home/domain/usecases/toogle_habit_completion.dart';

part 'habits_event.dart';
part 'habits_state.dart';
part 'habits_bloc.freezed.dart';
@injectable
class HabitsBloc extends Bloc<HabitsEvent, HabitsState> {
  
  GetTodayHabits getTodayHabits;
  AddHabit addHabit;
  DeleteHabit deleteHabit;
  ToogleHabitCompletion toggleHabitCompletion;
  HabitsBloc(
    this.getTodayHabits,
    this.addHabit,
    this.deleteHabit,
    this.toggleHabitCompletion
  ) : super(_Initial()) {
   on<_Started>(_onStarted);
   on<_GetHabits>(_onGetHabits);
   on<_CreateHabit>(_onCreateHabit);
   on<_UpdateHabit>(_onUpdateHabit);
   on<_DeleteHabit>(_onDeleteHabit);
   on<_ToggleHabitCompletion>(_onToggleHabitCompletion);
   on<_ReorderHabits>( _onReorderHabits);
  }

  

  FutureOr<void> _onStarted(_Started event, Emitter<HabitsState> emit) {
    emit(const HabitsState.initial());

  }

  FutureOr<void> _onGetHabits(_GetHabits event, Emitter<HabitsState> emit) {
    emit(const HabitsState.loading());
    final Stream<Either<Failure, List<HabitEntity>>> habits = getTodayHabits();

    habits.listen((event) {
      event.fold((l) => emit(HabitsState.failure(l.toString())), (r) => emit(HabitsState.success(habits: r)));
    });
  }

  FutureOr<void> _onCreateHabit(_CreateHabit event, Emitter<HabitsState> emit) {

  }

  FutureOr<void> _onUpdateHabit(_UpdateHabit event, Emitter<HabitsState> emit) {}

  FutureOr<void> _onDeleteHabit(_DeleteHabit event, Emitter<HabitsState> emit) {
     deleteHabit.call(event.habit.id!);
  }

  FutureOr<void> _onToggleHabitCompletion(_ToggleHabitCompletion event, Emitter<HabitsState> emit) {
    toggleHabitCompletion.call( event.habitId);
  }

  FutureOr<void> _onReorderHabits(_ReorderHabits event, Emitter<HabitsState> emit) {}
}
