part of 'habits_bloc.dart';

@freezed
class HabitsEvent with _$HabitsEvent {
  const factory HabitsEvent.started() = _Started;
  const factory HabitsEvent.getHabits() = _GetHabits;
  const factory HabitsEvent.watchHabits() = _WatchHabits;
  const factory HabitsEvent.createHabit(HabitEntity habit) = _CreateHabit;
  const factory HabitsEvent.updateHabit(HabitEntity habit) = _UpdateHabit;
  const factory HabitsEvent.deleteHabit(HabitEntity habit) = _DeleteHabit;
  const factory HabitsEvent.toggleHabitCompletion(
    String habitId,
    bool isCompleted,
  ) = _ToggleHabitCompletion;
  const factory HabitsEvent.reorderHabits(List<HabitEntity> reorderedHabits) =
      _ReorderHabits;
  const factory HabitsEvent.refreshHabits() = _RefreshHabits;
  const factory HabitsEvent.syncHabitsWithServer() = _SyncHabitsWithServer;
  const factory HabitsEvent.swipeCard(double borderRadius) = _SwipeCard;
}
