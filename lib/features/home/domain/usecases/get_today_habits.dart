// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sync_habits/core/error/failures.dart';
import 'package:sync_habits/features/home/domain/entities/habit_entity.dart';
import 'package:sync_habits/features/home/domain/repositories/habit_repository.dart';

@injectable
class GetTodayHabits {
  final HabitRepository _repo;
  GetTodayHabits(this._repo,);
  Stream<Either<Failure, List<HabitEntity>>>call()  =>  _repo.watchHabits();
}
