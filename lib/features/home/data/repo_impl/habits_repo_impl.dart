import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sync_habits/core/error/failures.dart';
import 'package:sync_habits/features/home/data/datasources/habit_local_data_source.dart';
import 'package:sync_habits/features/home/data/datasources/habit_remote_data_source.dart';
import 'package:sync_habits/features/home/data/models/habit_model.dart';
import 'package:sync_habits/features/home/domain/entities/habit_entity.dart';
import 'package:sync_habits/features/home/domain/repositories/habit_repository.dart';

@LazySingleton(as: HabitRepository)
class HabitsRepoImpl implements HabitRepository {
  HabitLocalDataSource localDataSource;
  HabitRemoteDataSource remoteDataSource;
  final Connectivity connectivity; // 💡 Declare it here
  HabitsRepoImpl(
    this.localDataSource,
    this.remoteDataSource,
    this.connectivity,
  );
  @override
  Future<Either<Failure, void>> addHabit(
    HabitEntity habit,
    String userId,
  ) async {
    try {
      final model = HabitModel.fromEntity(habit, userId);

      await localDataSource.cacheHabit(model);
      await remoteDataSource.upsert(model);
      return const Right(null);
    } catch (e) {
      return const Left(CacheFailure(message: 'لم نتمكن من حفظ العادة.'));
    }
  }

  @override
  Future<Either<Failure, void>> deleteHabit(String id) async {
    try {
      await localDataSource.deleteHabit(id);
      await remoteDataSource.delete(id);
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
      final habit = await localDataSource.getCachedHabit(id);
      await remoteDataSource.upsert(habit);
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
  Future<Either<Failure, void>> updateHabit(HabitEntity habit) async {
    try {
      await localDataSource.updateHabit(habit);
      await remoteDataSource.upsert(habit.toModel());
      return const Right(null);
    } catch (e) {
      return const Left(CacheFailure(message: 'لم نتمكن من حفظ العادة.'));
    }
  }

  @override
  Future<Either<Failure, List<HabitEntity>>> getTodayHabits() async {
    try {
      // 1. Get whatever data is currently cached in Hive (Fast Response)
      final cachedModels = await localDataSource.getTodayHabits();
      final cachedEntities = cachedModels
          .map((model) => model.toEntity())
          .toList();

      // 2. Trigger a background synchronization over the network (Non-blocking)
      // We don't 'await' this because we don't want to make the user wait for the internet!

      // 3. Instantly return the cached items to the presentation layer
      return Right(cachedEntities);
    } catch (e) {
      return const Left(
        CacheFailure(
          message: 'خطأ في قراءة العادات اليومية من التخزين المحلي.',
        ),
      );
    }
  }
}
