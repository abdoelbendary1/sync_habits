import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/habit_model.dart';

abstract class HabitRemoteDataSource {
  // جلب العادات من السيرفر
  Future<List<HabitModel>> getRemoteHabits();

  // رفع عادة جديدة للسيرفر
  Future<void> uploadHabit(HabitModel habit);

  // تحديث حالة العادة على السيرفر (مكتملة أو لأ)
  Future<void> updateRemoteHabitStatus(String habitId, bool isCompleted);
}
@LazySingleton(as: HabitRemoteDataSource)
class HabitRemoteDataSourceImpl implements HabitRemoteDataSource {
  final SupabaseClient _supabaseClient;

  // بنمرر الـ SupabaseClient من بره عشان الـ Dependency Injection
  HabitRemoteDataSourceImpl(this._supabaseClient);

  @override
  Future<List<HabitModel>> getRemoteHabits() async {
    // بنكلم جدول الـ habits في Supabase
    final response = await _supabaseClient
        .from('habits')
        .select();
    
    // بنحول البيانات اللي راجعة لـ List من الـ HabitModel
    return (response as List)
        .map((json) => HabitModel.fromJson(json))
        .toList();
  }

  @override
  Future<void> uploadHabit(HabitModel habit) async {
    // بنعمل Insert للـ JSON بتاع الموديل في السيرفر
    await _supabaseClient
        .from('habits')
        .insert(habit.toJson());
  }

  @override
  Future<void> updateRemoteHabitStatus(String habitId, bool isCompleted) async {
    // بنعمل Update لحقل الـ isCompletedToday بناءً على الـ id
    await _supabaseClient
        .from('habits')
        .update({'isCompletedToday': isCompleted})
        .eq('id', habitId);
  }
}