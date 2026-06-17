// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HabitModel _$HabitModelFromJson(Map<String, dynamic> json) => _HabitModel(
  id: json['id'] as String?,
  title: json['title'] as String?,
  streakCount: (json['streakCount'] as num?)?.toInt(),
  isCompletedToday: json['isCompletedToday'] as bool?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  categoryId: json['categoryId'] as String?,
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  isSyncedWithPartner: json['isSyncedWithPartner'] as bool?,
  syncedPartnerIds: (json['syncedPartnerIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  repeatDayIds: (json['repeatDayIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  reminderTime: json['reminderTime'] == null
      ? null
      : DateTime.parse(json['reminderTime'] as String),
  notes: json['notes'] as String?,
  dailyGoal: json['dailyGoal'] as String?,
);

Map<String, dynamic> _$HabitModelToJson(_HabitModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'streakCount': instance.streakCount,
      'isCompletedToday': instance.isCompletedToday,
      'createdAt': instance.createdAt?.toIso8601String(),
      'categoryId': instance.categoryId,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'isSyncedWithPartner': instance.isSyncedWithPartner,
      'syncedPartnerIds': instance.syncedPartnerIds,
      'repeatDayIds': instance.repeatDayIds,
      'reminderTime': instance.reminderTime?.toIso8601String(),
      'notes': instance.notes,
      'dailyGoal': instance.dailyGoal,
    };
