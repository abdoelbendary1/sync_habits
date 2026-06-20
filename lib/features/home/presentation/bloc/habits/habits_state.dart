part of 'habits_bloc.dart';

@freezed
 class HabitsState with _$HabitsState {
  const factory HabitsState.initial() = _Initial;
  const factory HabitsState.loading() = _Loading;
  const factory HabitsState.success({
    required List<HabitEntity> habits,
  }) = _Success;
  const factory HabitsState.failure(String message) = _Failure;
}
