import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String id,
    required String name,
    required String email,
    required String? avatarUrl,
    @Default(0) int totalPoints,
    @Default(1) int currentLevel,
    @Default(0) int highestStreak,
    @Default(false) bool isOnline,
    @Default(0) int progress,
    DateTime? lastSeen,
    String? partnerId,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}

extension UserEntityX on UserEntity {
  UserEntity toModel() => UserEntity(
    id: id,
    name: name,
    email: email,
    avatarUrl: avatarUrl,
    totalPoints: totalPoints,
    currentLevel: currentLevel,
    highestStreak: highestStreak,
    isOnline: isOnline,
    progress: progress,
    lastSeen: lastSeen,
    partnerId: partnerId,
  );
}
