import 'package:sync_habits/features/home/data/models/habit_model.dart';

class HabitEntity {
  final String? id;
  final String? userId;
  final String? title;
  final int? streakCount;
  final String? categoryId;
  final bool? isCompletedToday;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final bool? isSyncedWithPartner;
  final List<String>? syncedPartnerIds;
  final List<String>? repeatDayIds;
  final DateTime? reminderTime;
  final String? notes;
  final String? dailyGoal;
  final bool? isDirty;

  const HabitEntity({
    this.id,
    this.userId,
    this.title,
    this.streakCount,
    this.isCompletedToday,
    this.createdAt,
    this.categoryId,
    this.updatedAt,
    this.isSyncedWithPartner,
    this.syncedPartnerIds,
    this.repeatDayIds,
    this.reminderTime,
    this.notes,
    this.dailyGoal,
    this.isDirty,
  });

  // ميزة للـ Seniors: بتساعدنا نعدل على الـ Object مع الحفاظ عليه كـ Immutable
  HabitEntity copyWith({
    String? id,
    String? title,
    int? streakCount,
    bool? isCompletedToday,
    DateTime? createdAt,
    String? categoryId,
    DateTime? updatedAt,
    bool? isSyncedWithPartner,
    List<String>? syncedPartnerIds,
    List<String>? repeatDayIds,
    DateTime? reminderTime,
    String? notes,
    String? dailyGoal,
  }) {
    return HabitEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      streakCount: streakCount ?? this.streakCount,
      isCompletedToday: isCompletedToday ?? this.isCompletedToday,
      createdAt: createdAt ?? this.createdAt,
      categoryId: categoryId ?? this.categoryId,
      updatedAt: updatedAt ?? this.updatedAt,
      isSyncedWithPartner: isSyncedWithPartner ?? this.isSyncedWithPartner,
      syncedPartnerIds: syncedPartnerIds ?? this.syncedPartnerIds,
      repeatDayIds: repeatDayIds ?? this.repeatDayIds,
      reminderTime: reminderTime ?? this.reminderTime,
      notes: notes ?? this.notes,
      dailyGoal: dailyGoal ?? this.dailyGoal,
    );
  }
}

extension HabitEntityMapper on HabitEntity {
  HabitModel toModel() {
    return HabitModel(
      id: id ?? '',
      userId: userId ?? "",
      title: title ?? '',
      streakCount: streakCount ?? 0,
      isCompletedToday: isCompletedToday ?? false,
      createdAt: createdAt ?? DateTime.now(),
      categoryId: categoryId,
      updatedAt: updatedAt ?? DateTime.now(),
      isSyncedWithPartner: isSyncedWithPartner ?? false,
      syncedPartnerIds: syncedPartnerIds ?? [],
      repeatDayIds: repeatDayIds ?? [],
      reminderTime: reminderTime,
      notes: notes,
      dailyGoal: dailyGoal,
      isDirty: isDirty ?? false,
    );
  }
}
