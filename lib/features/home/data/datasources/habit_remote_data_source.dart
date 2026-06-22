// features/habits/data/datasources/habit_remote_data_source.dart
import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/habit_model.dart';

abstract class HabitRemoteDataSource {
  Stream<List<HabitModel>> watchHabits();
  Future<List<HabitModel>> getTodayHabits();
  Future<void> addHabit(HabitModel habit);
  Future<void> updateHabit(HabitModel habit);
  Future<void> deleteHabit(String id);
  Future<void> toggleHabitCompletion(String id, bool isCompleted);
}

class HabitRemoteDataSourceImpl implements HabitRemoteDataSource {
  final SupabaseClient _supabase;

  HabitRemoteDataSourceImpl(this._supabase);

  // Getter to securely resolve current authenticated user ID
  String get _currentUserId => _supabase.auth.currentUser!.id;

  @override
  Stream<List<HabitModel>> watchHabits() {
    return _supabase
        .from('habits')
        .stream(primaryKey: ['id'])
        .eq('user_id', _currentUserId) // Isolates execution to owner context
        .map((maps) => maps.map((map) => HabitModel.fromJson(map)).toList());
  }

  @override
  Future<List<HabitModel>> getTodayHabits() async {
    final response = await _supabase
        .from('habits')
        .select()
        .eq('user_id', _currentUserId);

    return (response as List).map((map) => HabitModel.fromJson(map)).toList();
  }

  @override
  Future<void> addHabit(HabitModel habit) async {
    // Exclude 'id' from map payload if database generates it as a UUID
    final jsonMap = habit.toJson();
    if (habit.id.isEmpty) jsonMap.remove('id');

    await _supabase.from('habits').insert(jsonMap);
  }

  @override
  Future<void> updateHabit(HabitModel habit) async {
    await _supabase
        .from('habits')
        .update(habit.toJson())
        .eq('id', habit.id);
  }

  @override
  Future<void> deleteHabit(String id) async {
    await _supabase.from('habits').delete().eq('id', id);
  }

  @override
  Future<void> toggleHabitCompletion(String id, bool isCompleted) async {
    await _supabase
        .from('habits')
        .update({
          'is_completed_today': isCompleted,
          'updated_at': DateTime.now().toUtc().toIso8601String(),
        })
        .eq('id', id);
  }
}