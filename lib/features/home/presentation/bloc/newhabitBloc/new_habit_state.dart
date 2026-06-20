import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:sync_habits/core/enums/Habit_category.dart';
import 'package:sync_habits/core/enums/day_enum.dart';
import 'package:sync_habits/core/enums/form_status.dart';
import 'package:sync_habits/features/home/domain/entities/habit_entity.dart';

part 'new_habit_state.freezed.dart';

@freezed
abstract class NewHabitState with _$NewHabitState {
  const NewHabitState._(); // عشان نقدر نضيف Methods

  const factory NewHabitState({
    @Default('') String habitName,
    @Default(HabitCategory.fitness) HabitCategory selectedCategory,
    @Default([]) List<DayEnum> repeatDays,
    @Default(TimeOfDay(hour: 8, minute: 0)) TimeOfDay reminderTime,
    @Default(1) int dailyGoalSessions,
    @Default(true) bool syncWithPartners,
    @Default(FormStatus.initial) FormStatus status,
    String? errorMessage,
  }) = _NewHabitState;

  bool get isNameValid => habitName.trim().isNotEmpty;// 👇 الميثود السحرية اللي هتاخد الـ state الحالية وتحولها لـ Entity فوراً
  HabitEntity toEntity() {
    // هنا بنظبط الـ TimeOfDay عشان يتحول لـ DateTime للـ database
    final now = DateTime.now();
    final reminderDateTime = DateTime(
      now.year, now.month, now.day, 
      reminderTime.hour, reminderTime.minute,
    );

    return HabitEntity(
      id: now.millisecondsSinceEpoch.toString(), // ID فريد مبدئي
      title: habitName,
      categoryId: selectedCategory.name, // تحويل الـ Enum لـ String
      repeatDayIds: repeatDays.map((day) => day.name).toList(), // تحويل لستة الـ Enums
      reminderTime: reminderDateTime,
      dailyGoal: dailyGoalSessions.toString(),
      isSyncedWithPartner: syncWithPartners,
      // باقي الخصائص الابتدائية اللي الـ UI ملوش دخل بيها
      streakCount: 0,
      isCompletedToday: false,
      createdAt: now,
      updatedAt: now,
      
    );
  }
}
