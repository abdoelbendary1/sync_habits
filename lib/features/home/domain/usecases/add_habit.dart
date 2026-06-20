import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sync_habits/core/error/failures.dart';
import 'package:sync_habits/features/home/domain/entities/habit_entity.dart';
import 'package:sync_habits/features/home/domain/repositories/habit_repository.dart';
@injectable
class AddHabit {
  final HabitRepository _repo;
  AddHabit(this._repo);

  Future<Either<Failure, void>> call(HabitEntity habit) => _repo.addHabit(habit);
}