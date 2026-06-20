part of 'habits_bloc.dart';

@freezed
class HabitsEvent with _$HabitsEvent {
  const factory HabitsEvent.started() = _Started;
  const factory HabitsEvent.getHabits() = _GetHabits;
  const factory HabitsEvent.createHabit(HabitModel habit) = _CreateHabit;
  const factory HabitsEvent.updateHabit(HabitModel habit) = _UpdateHabit;
  const factory HabitsEvent.deleteHabit(HabitModel habit) = _DeleteHabit;
  const factory HabitsEvent.toggleHabitCompletion(String habitId, bool isCompleted) = _ToggleHabitCompletion;
  const factory HabitsEvent.reorderHabits(List<HabitModel> reorderedHabits) = _ReorderHabits;
  const factory HabitsEvent.refreshHabits() = _RefreshHabits;
}