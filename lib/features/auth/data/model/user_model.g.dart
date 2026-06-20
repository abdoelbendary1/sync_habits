// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  avatarUrl: json['avatarUrl'] as String?,
  totalPoints: (json['totalPoints'] as num?)?.toInt() ?? 0,
  currentLevel: (json['currentLevel'] as num?)?.toInt() ?? 1,
  highestStreak: (json['highestStreak'] as num?)?.toInt() ?? 0,
  isOnline: json['isOnline'] as bool? ?? false,
  progress: (json['progress'] as num?)?.toInt() ?? 0,
  lastSeen: json['lastSeen'] == null
      ? null
      : DateTime.parse(json['lastSeen'] as String),
  partnerId: json['partnerId'] as String?,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'avatarUrl': instance.avatarUrl,
      'totalPoints': instance.totalPoints,
      'currentLevel': instance.currentLevel,
      'highestStreak': instance.highestStreak,
      'isOnline': instance.isOnline,
      'progress': instance.progress,
      'lastSeen': instance.lastSeen?.toIso8601String(),
      'partnerId': instance.partnerId,
    };
