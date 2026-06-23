// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HabitModel _$HabitModelFromJson(Map<String, dynamic> json) => _HabitModel(
  id: json['id'] as String,
  userId: json['user_id'] as String,
  title: json['title'] as String,
  streakCount: (json['streak_count'] as num?)?.toInt() ?? 0,
  isCompletedToday: json['is_completed_today'] as bool? ?? false,
  createdAt: DateTime.parse(json['created_at'] as String),
  categoryId: json['category_id'] as String?,
  updatedAt: DateTime.parse(json['updated_at'] as String),
  isSyncedWithPartner: json['is_synced_with_partner'] as bool? ?? false,
  syncedPartnerIds:
      (json['synced_partner_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  repeatDayIds:
      (json['repeat_day_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  reminderTime: json['reminder_time'] == null
      ? null
      : DateTime.parse(json['reminder_time'] as String),
  notes: json['notes'] as String?,
  dailyGoal: json['daily_goal'] as String?,
  isDirty: json['is_dirty'] as bool? ?? false,
);

Map<String, dynamic> _$HabitModelToJson(_HabitModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'title': instance.title,
      'streak_count': instance.streakCount,
      'is_completed_today': instance.isCompletedToday,
      'created_at': instance.createdAt.toIso8601String(),
      'category_id': instance.categoryId,
      'updated_at': instance.updatedAt.toIso8601String(),
      'is_synced_with_partner': instance.isSyncedWithPartner,
      'synced_partner_ids': instance.syncedPartnerIds,
      'repeat_day_ids': instance.repeatDayIds,
      'reminder_time': instance.reminderTime?.toIso8601String(),
      'notes': instance.notes,
      'daily_goal': instance.dailyGoal,
      'is_dirty': instance.isDirty,
    };
