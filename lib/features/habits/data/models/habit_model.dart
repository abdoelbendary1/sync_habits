import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/habit_entity.dart';

part 'habit_model.freezed.dart';
part 'habit_model.g.dart';

@freezed
abstract class HabitModel with _$HabitModel {
  // الـ Constructor ده أساسي وممنوع يتشال طالما فيه دالة (Method) مانيوال مكتوبة جوه الكلاس
  const HabitModel._();

  const factory HabitModel({
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
  }) = _HabitModel;

  factory HabitModel.fromJson(Map<String, dynamic> json) =>
      _$HabitModelFromJson(json);

  factory HabitModel.fromEntity(HabitEntity entity) {
    return HabitModel(
      id: entity.id,
      title: entity.title,
      streakCount: entity.streakCount,
      isCompletedToday: entity.isCompletedToday,
      createdAt: entity.createdAt,
      categoryId: entity.categoryId,
      updatedAt: entity.updatedAt,
      isSyncedWithPartner: entity.isSyncedWithPartner,
      syncedPartnerIds: entity.syncedPartnerIds,
      repeatDayIds: entity.repeatDayIds,
      reminderTime: entity.reminderTime,
      notes: entity.notes,
      dailyGoal: entity.dailyGoal,
    );
  }
}

// نقلنا الـ Extension بره الكلاس تماماً عشان نضمن إن الـ compiler ميتلغبطش بين الـ generated getters والـ custom methods
extension HabitModelX on HabitModel {
  HabitEntity toEntity() {
    return HabitEntity(
      id: id,
      title: title,
      streakCount: streakCount,
      isCompletedToday: isCompletedToday,
      createdAt: createdAt,
      categoryId: categoryId,
      updatedAt: updatedAt,
      isSyncedWithPartner: isSyncedWithPartner,
      syncedPartnerIds: syncedPartnerIds,
      repeatDayIds: repeatDayIds,
      reminderTime: reminderTime,
      notes: notes,
      dailyGoal: dailyGoal,
    );
  }
}
