// features/habits/data/models/habit_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import '../../domain/entities/habit_entity.dart';

part 'habit_model.freezed.dart';
part 'habit_model.g.dart';

@freezed
@HiveType(typeId: 1) // 💡 Assign a unique typeId for Hive
abstract class HabitModel with _$HabitModel {
  const HabitModel._();

  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory HabitModel({
    @HiveField(0) required String id,
    @HiveField(1) required String userId,
    @HiveField(2) required String title,
    @HiveField(3) @Default(0) int streakCount,
    @HiveField(4) @Default(false) bool isCompletedToday,
    @HiveField(5) required DateTime createdAt,
    @HiveField(6) String? categoryId,
    @HiveField(7) required DateTime updatedAt,
    @HiveField(8) @Default(false) bool isSyncedWithPartner,
    @HiveField(9) @Default([]) List<String> syncedPartnerIds,
    @HiveField(10) @Default([]) List<String> repeatDayIds,
    @HiveField(11) DateTime? reminderTime,
    @HiveField(12) String? notes,
    @HiveField(13) String? dailyGoal,
    @HiveField(14) @Default(false) bool isDirty, // 🔥 Tracks offline changes
  }) = _HabitModel;

  factory HabitModel.fromJson(Map<String, dynamic> json) =>
      _$HabitModelFromJson(json);

  factory HabitModel.fromEntity(HabitEntity entity, String authUserId) {
    return HabitModel(
      id: entity.id ?? '',
      userId: authUserId,
      title: entity.title ?? '',
      streakCount: entity.streakCount ?? 0,
      isCompletedToday: entity.isCompletedToday ?? false,
      createdAt: entity.createdAt ?? DateTime.now(),
      categoryId: entity.categoryId,
      updatedAt: entity.updatedAt ?? DateTime.now(),
      isSyncedWithPartner: entity.isSyncedWithPartner ?? false,
      syncedPartnerIds: entity.syncedPartnerIds ?? [],
      repeatDayIds: entity.repeatDayIds ?? [],
      reminderTime: entity.reminderTime,
      notes: entity.notes,
      dailyGoal: entity.dailyGoal,
    );
  }
}

extension HabitModelX on HabitModel {
  HabitEntity toEntity() {
    return HabitEntity(
      id: id,
      title: title,
      userId: userId,
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
      isDirty: isDirty,
    );
  }
}
