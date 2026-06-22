// domain/usecases/login_usecase.dart
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sync_habits/core/error/failures.dart';
import 'package:sync_habits/features/auth/domain/repositories/auth_repo.dart';

import '../entities/user_entity.dart';

@injectable
class LoginUseCase {
  final IAuthRepository repository;
  const LoginUseCase(this.repository);

  Future<Either<Failure, UserEntity>> call(
    String email,
    String password,
  ) async {
    return await repository.login(email: email, password: password);
  }
}

@injectable
class SignUpUseCase {
  final IAuthRepository repository;
  const SignUpUseCase(this.repository);

  Future<Either<Failure, UserEntity>> call({
    required String name,
    required String email,
    required String password,
  }) async {
    return await repository.signUp(
      name: name,
      email: email,
      password: password,
    );
  }
}

@injectable
class LogoutUseCase {
  final IAuthRepository repository;
  const LogoutUseCase(this.repository);

  Future<Either<Failure, void>> call() async {
    return await repository.logout();
  }
}

@injectable
class FetchUserProfileUseCase {
  final IAuthRepository repository;
  const FetchUserProfileUseCase(this.repository);

  Future<Either<Failure, UserEntity?>> call() async {
    return await repository.fetchUserProfile();
  }
}
