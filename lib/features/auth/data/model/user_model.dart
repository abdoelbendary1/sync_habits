import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel { // 👈 شيلنا abstract وبقت class عادية
  const factory UserModel({
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
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}