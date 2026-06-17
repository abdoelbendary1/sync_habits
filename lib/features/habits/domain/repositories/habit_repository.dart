import '../entities/habit_entity.dart';

abstract class HabitRepository {
  // 1. بث لحظي لعادات اليوم (تحديث تلقائي أول بأول)
  Stream<List<HabitEntity>> watchTodayHabits();

  // 2. إضافة عادة جديدة
  Future<void> createHabit(HabitEntity habit);

  // 3. تعليم العادة كـ مكتملة أو غير مكتملة
  Future<void> toggleHabitCompletion(String habitId, bool isCompleted);
}