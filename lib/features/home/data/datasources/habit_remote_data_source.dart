// features/habits/data/datasources/habit_remote_data_source.dart
import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/habit_model.dart';

abstract class HabitRemoteDataSource {
  Future<List<HabitModel>> getChanges(DateTime lastSyncedAt);
  Future<void> upsert(HabitModel habit);
  Future<void> delete(String id);
}

class HabitRemoteDataSourceImpl implements HabitRemoteDataSource {
  final SupabaseClient _supabase;

  HabitRemoteDataSourceImpl(this._supabase);

  String get _currentUserId => _supabase.auth.currentUser!.id;

  @override
  Future<List<HabitModel>> getChanges(DateTime lastSyncedAt) async {
    // Delta Sync: Only download what changed since our last sync time
    final response = await _supabase
        .from('habits')
        .select()
        .eq('user_id', _currentUserId)
        .gt('updated_at', lastSyncedAt.toUtc().toIso8601String());

    return (response as List).map((map) => HabitModel.fromJson(map)).toList();
  }

  @override
  Future<void> upsert(HabitModel habit) async {
    // Handles both Add and Update/Toggle operations on Supabase automatically!
    final jsonMap = habit.toJson();
    if (habit.id == null || habit.id!.isEmpty) jsonMap.remove('id');

    await _supabase.from('habits').upsert(jsonMap);
  }

  @override
  Future<void> delete(String id) async {
    await _supabase.from('habits').delete().eq('id', id);
  }
}
