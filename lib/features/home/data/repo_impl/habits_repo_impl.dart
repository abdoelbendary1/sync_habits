import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sync_habits/core/error/failures.dart';
import 'package:sync_habits/features/home/data/datasources/habit_local_data_source.dart';
import 'package:sync_habits/features/home/data/models/habit_model.dart';
import 'package:sync_habits/features/home/domain/entities/habit_entity.dart';
import 'package:sync_habits/features/home/domain/repositories/habit_repository.dart';

@LazySingleton(as: HabitRepository)
class HabitsRepoImpl implements HabitRepository {
  HabitLocalDataSource localDataSource;
  HabitsRepoImpl(this.localDataSource);
  @override
  Future<Either<Failure, void>> addHabit(HabitEntity habit) async {
    try {
      // هنا السحر: الـ Repo جاله Entity، حولها لـ Model وباصاها للـ Data Source
      // ملحوظة: يفضل تعمل دالة توضيحية أو الـ Extension اللي إنت عامله
      final model = HabitModel.fromEntity(habit);

      await localDataSource.cacheHabit(model);
      return const Right(null);
    } catch (e) {
      return const Left(CacheFailure(message: 'لم نتمكن من حفظ العادة.'));
    }
  }

  @override
  Future<Either<Failure, void>> deleteHabit(String id) async {
    try {
      await localDataSource.deleteHabit(id);
      return const Right(null);
    } catch (e) {
      return const Left(CacheFailure(message: 'لم نتمكن من حذف العادة.'));
    }
  }

  @override
  Future<Either<Failure, void>> syncHabitsWithServer() {
    // TODO: implement syncHabitsWithServer
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> toggleHabitCompletion(String id) async {
    try {
      await localDataSource.toggleHabitCompletion(id);
      return const Right(null);
    } catch (e) {
      return const Left(
        CacheFailure(message: 'لم نتمكن من تغيير حالة العادة.'),
      );
    }
  }

  @override
  Stream<Either<Failure, List<HabitEntity>>> watchHabits() {
    return localDataSource
        .getCachedHabits()
        .map<Either<Failure, List<HabitEntity>>>((habitModels) {
          try {
            // بنحول كل Model لـ Entity عشان نطلعه للـ Domain والـ UI
            final entities = habitModels
                .map((model) => model.toEntity())
                .toList();
            return Right(entities);
          } catch (e) {
            return const Left(
              CacheFailure(message: 'خطأ أثناء قراءة العادات من الكاش.'),
            );
          }
        });
  }

  @override
  Future<Either<Failure, void>> reorderHabits(List<HabitEntity> habits) {
    // TODO: implement reorderHabits
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> updateHabit(HabitEntity habit) {
    // TODO: implement updateHabit
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<HabitEntity>>> getTodayHabits() async {
    try {
      final models = await localDataSource.getTodayHabits();
      final entities = models.map((model) => model.toEntity()).toList();
      return Right(entities);
    } catch (e) {
      return const Left(
        CacheFailure(message: 'خطاء في قراءة العادات اليومية.'),
      );
    }
  }
}
