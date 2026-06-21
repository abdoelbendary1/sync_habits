part of 'habits_bloc.dart';

@freezed
class HabitsState with _$HabitsState {
  const factory HabitsState.initial() = _Initial;
  const factory HabitsState.loading() = _Loading;
  const factory HabitsState.success({
    required List<HabitEntity> habits,
    required List<HabitEntity> completedHabits,
    required List<HabitEntity> uncompletedHabits,
    @Default(false) bool? isSyncedWithServer,
    @Default(16.0) double? cardBorderRadius,
  }) = _Success;
  const factory HabitsState.failure(String message) = _Failure;
}
