import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sync_habits/core/enums/day_enum.dart';
import 'package:sync_habits/core/enums/form_status.dart';
import 'package:sync_habits/features/home/domain/usecases/add_habit.dart';
import 'new_habit_event.dart';
import 'new_habit_state.dart';

@injectable
class NewHabitBloc extends Bloc<NewHabitEvent, NewHabitState> {
  final AddHabit addHabit;
  // final HabitRepository _repo; // ضيف الـ Repository بتاعك هنا

  NewHabitBloc(this.addHabit) : super(const NewHabitState()) {
    on<HabitNameChanged>(
      (event, emit) => emit(state.copyWith(habitName: event.name)),
    );

    on<CategoryChanged>(
      (event, emit) => emit(state.copyWith(selectedCategory: event.category)),
    );

    on<RepeatDayToggled>((event, emit) {
      final days = List<DayEnum>.from(state.repeatDays);
      days.contains(event.day) ? days.remove(event.day) : days.add(event.day);
      emit(state.copyWith(repeatDays: days));
    });

    on<ReminderTimeChanged>(
      (event, emit) => emit(state.copyWith(reminderTime: event.time)),
    );

    on<DailyGoalChanged>(
      (event, emit) => emit(state.copyWith(dailyGoalSessions: event.sessions)),
    );

    on<SyncPartnersToggled>(
      (event, emit) => emit(state.copyWith(syncWithPartners: event.isEnabled)),
    );

    on<SaveHabitSubmitted>(_onSubmitted);
  }

  Future<void> _onSubmitted(event, emit) async {
    if (!state.isNameValid) return;

    emit(state.copyWith(status: FormStatus.submitting));

    try {
      final newHabit = state.toEntity();
      addHabit.call(newHabit, '1'); // محاكاة للـ API
      emit(state.copyWith(status: FormStatus.success));
    } catch (e) {
      emit(
        state.copyWith(status: FormStatus.failure, errorMessage: e.toString()),
      );
    }
  }
}
