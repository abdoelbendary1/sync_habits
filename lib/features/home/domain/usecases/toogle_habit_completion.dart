import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sync_habits/core/error/failures.dart';
import 'package:sync_habits/features/home/domain/repositories/habit_repository.dart';
@injectable
class ToggleHabitCompletion {
  final HabitRepository _repo;
  ToggleHabitCompletion(this._repo);

  Future<Either<Failure, void>> call(String habitId) => _repo.toggleHabitCompletion(habitId);
}