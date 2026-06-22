// features/auth/data/repositories/auth_repository.dart

import 'package:dartz/dartz.dart';
import 'package:sync_habits/core/error/failures.dart';
import 'package:sync_habits/features/auth/domain/entities/user_entity.dart';

abstract class IAuthRepository {
  // Simulate network/database request delay
  Future<Either<Failure, UserEntity>> login({
    required String email,
    required String password,
  });

  Future<Either<Failure, UserEntity>> signUp({
    required String name,
    required String email,
    required String password,
  });
  Future<Either<Failure, UserEntity?>> fetchUserProfile();
  Future<Either<Failure, void>> logout();
}
