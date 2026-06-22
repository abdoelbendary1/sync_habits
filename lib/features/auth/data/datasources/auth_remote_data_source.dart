// data/datasources/auth_remote_data_source.dart
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:sync_habits/features/auth/data/model/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel?> login({required String email, required String password});
  Future<UserModel?> signUp({
    required String name,
    required String email,
    required String password,
  });
  Future<UserModel?> getCurrentUser();
  Future<void> logout();
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient _supabase;

  AuthRemoteDataSourceImpl(this._supabase);

  @override
  Future<UserModel?> login({
    required String email,
    required String password,
  }) async {
    // 1. Authenticate with Supabase Auth
    final AuthResponse response = await _supabase.auth.signInWithPassword(
      email: email,
      password: password,
    );

    if (response.user == null) throw Exception("User not found after login.");

    // 2. Fetch profile columns from your 'profiles' DB table
    return await _fetchUserProfile(response.user!.id);
  }

  @override
  Future<UserModel?> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    // 1. Create account in Supabase Auth
    final AuthResponse response = await _supabase.auth.signUp(
      email: email,
      password: password,
      data: {'display_name': name}, // Saves metadata in auth auth.users table
    );

    if (response.user == null) throw Exception("Sign up failed.");

    // 2. Create the record in your public.profiles table
    await _supabase.from('profiles').insert({
      'id': response.user!.id,
      'name': name,
      'email': email,
      'highest_streak': 0,
      'total_points': 0,
    });

    return _fetchUserProfile(response.user!.id);
  }

  @override
  Future<UserModel?> getCurrentUser() async {
    final session = _supabase.auth.currentSession;
    if (session == null) return null;
    return await _fetchUserProfile(session.user.id);
  }

  @override
  Future<void> logout() async {
    await _supabase.auth.signOut();
  }

  // Helper method to fetch and parse profile metadata from DB
  Future<UserModel?> _fetchUserProfile(String userId) async {
    final data = await _supabase
        .from('profiles')
        .select()
        .eq('id', userId)
        .maybeSingle(); // 💡 Returns null instead of throwing an error if row is missing

    if (data == null) return null;
    return UserModel.fromJson(data);
  }
}
