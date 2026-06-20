// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive/hive.dart' as _i979;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

import '../../features/home/data/datasources/habit_local_data_source.dart'
    as _i394;
import '../../features/home/data/datasources/habit_remote_data_source.dart'
    as _i508;
import '../../features/home/data/repo_impl/habits_repo_impl.dart' as _i807;
import '../../features/home/domain/repositories/habit_repository.dart' as _i360;
import '../../features/home/domain/usecases/add_habit.dart' as _i386;
import '../../features/home/domain/usecases/delete_habit.dart' as _i52;
import '../../features/home/domain/usecases/get_today_habits.dart' as _i703;
import '../../features/home/domain/usecases/toogle_habit_completion.dart'
    as _i405;
import '../../features/home/presentation/bloc/habits/habits_bloc.dart' as _i547;
import '../../features/home/presentation/bloc/newhabitBloc/new_habit_bloc.dart'
    as _i838;
import '../../features/home/presentation/bloc/partnerActivity/partner_activity_bloc.dart'
    as _i193;
import '../../features/home/presentation/bloc/PartnershipSyncBloc/partnership_sync_bloc.dart'
    as _i321;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i321.PartnershipSyncBloc>(() => _i321.PartnershipSyncBloc());
    gh.factory<_i838.NewHabitBloc>(() => _i838.NewHabitBloc());
    gh.factory<_i193.PartnerActivityBloc>(() => _i193.PartnerActivityBloc());
    gh.lazySingleton<_i394.HabitLocalDataSource>(
      () => _i394.HabitLocalDataSourceImpl(gh<_i979.Box<dynamic>>()),
    );
    gh.lazySingleton<_i360.HabitRepository>(
      () => _i807.HabitsRepoImpl(gh<_i394.HabitLocalDataSource>()),
    );
    gh.factory<_i386.AddHabit>(
      () => _i386.AddHabit(gh<_i360.HabitRepository>()),
    );
    gh.factory<_i52.DeleteHabit>(
      () => _i52.DeleteHabit(gh<_i360.HabitRepository>()),
    );
    gh.factory<_i703.GetTodayHabits>(
      () => _i703.GetTodayHabits(gh<_i360.HabitRepository>()),
    );
    gh.factory<_i405.ToogleHabitCompletion>(
      () => _i405.ToogleHabitCompletion(gh<_i360.HabitRepository>()),
    );
    gh.lazySingleton<_i508.HabitRemoteDataSource>(
      () => _i508.HabitRemoteDataSourceImpl(gh<_i454.SupabaseClient>()),
    );
    gh.factory<_i547.HabitsBloc>(
      () => _i547.HabitsBloc(
        gh<_i703.GetTodayHabits>(),
        gh<_i386.AddHabit>(),
        gh<_i52.DeleteHabit>(),
        gh<_i405.ToogleHabitCompletion>(),
      ),
    );
    return this;
  }
}
