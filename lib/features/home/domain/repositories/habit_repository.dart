import 'package:dartz/dartz.dart';
import 'package:sync_habits/core/error/failures.dart';

import '../entities/habit_entity.dart';

abstract class HabitRepository {
  // The UI constantly listens to this
  Stream<Either<Failure, List<HabitEntity>>> watchHabits();
  Future<Either<Failure, List<HabitEntity>>> getTodayHabits();
  // These mutate the local DB instantly and sync with the server in the background
  Future<Either<Failure, void>> addHabit(HabitEntity habit, String userId);
  Future<Either<Failure, void>> deleteHabit(String id);
  Future<Either<Failure, void>> toggleHabitCompletion(String id);
  Future<Either<Failure, void>> updateHabit(HabitEntity habit);
  Future<Either<Failure, void>> reorderHabits(List<HabitEntity> habits);

  // Call this on app startup or pull-to-refresh to fetch fresh data from backend
  Future<Either<Failure, void>> syncHabitsWithServer();
}
