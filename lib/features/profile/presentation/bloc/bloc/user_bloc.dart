import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sync_habits/features/auth/data/model/user_model.dart';
import 'package:sync_habits/features/auth/domain/entities/user_entity.dart';
import 'package:sync_habits/features/auth/domain/usecases/auth_usecases.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final FetchUserProfileUseCase _fetchUserProfileUseCase;

  UserBloc({required FetchUserProfileUseCase fetchUserProfileUseCase})
    : _fetchUserProfileUseCase = fetchUserProfileUseCase,
      super(_Initial()) {
    on<_FetchUserProfile>((event, emit) async {
      emit(const UserState.loading());
      try {
        final result = await _fetchUserProfileUseCase.call();
        result.fold(
          (failure) => emit(UserState.error(failure.toString())),
          (user) => emit(UserState.loaded(user: user!)),
        );
      } catch (e) {
        emit(UserState.error(e.toString()));
      }
    });
    on<_ProfileSaved>(_onProfileSaved);
    on<_UpdateSyncSettings>((event, emit) {
      if (state is _Loaded) {
        final currentState = state as _Loaded;
        emit(currentState.copyWith(syncSettingsActive: event.isActive));
      }
    });

    on<_LogOut>((event, emit) {
      emit(const UserState.initial());
      // Handle navigation or clean your local tokens/cache here
    });
  }

  FutureOr<void> _onProfileSaved(_ProfileSaved event, Emitter<UserState> emit) {
    emit(UserState.loaded(user: event.user));
  }
}
