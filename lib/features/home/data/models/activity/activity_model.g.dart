// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActivityModel _$ActivityModelFromJson(Map<String, dynamic> json) =>
    _ActivityModel(
      id: json['id'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      habitTitle: json['habitTitle'] as String,
      completedAt: DateTime.parse(json['completedAt'] as String),
      currentStreak: (json['currentStreak'] as num).toInt(),
      isHighFied: json['isHighFied'] as bool? ?? false,
    );

Map<String, dynamic> _$ActivityModelToJson(_ActivityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'habitTitle': instance.habitTitle,
      'completedAt': instance.completedAt.toIso8601String(),
      'currentStreak': instance.currentStreak,
      'isHighFied': instance.isHighFied,
    };
