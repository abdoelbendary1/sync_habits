import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:sync_habits/core/constants/secret_keys.dart';

import 'package:sync_habits/core/localization/arb/app_localizations.dart';
import 'package:sync_habits/core/navigation/app_router.dart';
import 'package:sync_habits/core/service_locator/injection.dart';
import 'package:sync_habits/features/auth/presentation/bloc/auth_bloc.dart';
import 'core/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await Hive.initFlutter();
  // await Hive.openBox('habitBox');

  // 2. Initialize Supabase (Don't forget this!)
  await Supabase.initialize(url: supabaseURL, anonKey: supabaseKey);
  await configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => getIt<AuthBloc>())],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            routerConfig: appRouter,
            title: 'SyncHabit',
            theme: AppTheme.darkTheme,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: const Locale('en'),
            // home: const HomePage(),
          );
        },
      ),
    );
  }
}
