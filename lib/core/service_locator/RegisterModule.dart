import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hive/hive.dart';

import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@module
abstract class RegisterModule {
  @Named("habitBox")
  @preResolve // This tells Injectable to await this method
  Future<Box> get habitBox => Hive.openBox('habitBox');

  @lazySingleton
  SupabaseClient get supabaseClient => Supabase.instance.client;
  @lazySingleton
  Connectivity get connectivity => Connectivity();
}
