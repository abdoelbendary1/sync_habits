import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sync_habits/features/accountability/presentation/pages/analytics_page.dart';
import 'package:sync_habits/features/accountability/presentation/pages/select_partner_page.dart';
import 'package:sync_habits/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:sync_habits/features/auth/presentation/pages/login_screen.dart';
import 'package:sync_habits/features/home/presentation/pages/BottomNavBarScaffold.dart';
import 'package:sync_habits/features/home/presentation/pages/home_screen.dart';
import 'package:sync_habits/features/home/presentation/pages/new_habit_page.dart';
import 'package:sync_habits/features/profile/presentation/pages/ProfilePage.dart';

part 'app_router.g.dart'; // الملف اللي هيتولد تلقائيًا

// 1. تعريف الـ Root Navigator Key
final rootNavigatorKey = GlobalKey<NavigatorState>();

// 2. تعريف الـ Router Configuration
final appRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/home',
  // 🔄 1. DYNAMIC AUTHENTICATION REDIRECT GUARD
  redirect: (context, state) {
    final authState = context.read<AuthBloc>().state;

    // Check if the user is logged in based on your AuthBloc state
    final bool isLoggedIn = authState.maybeWhen(
      authenticated: (_) => true,
      orElse: () => false,
    );

    final bool isLoggingIn = state.matchedLocation == '/login';

    // If not logged in and trying to access app pages -> Force redirect to Login
    if (!isLoggedIn && !isLoggingIn) return '/login';

    // If logged in and trying to view Login page -> Push them to Home instead
    if (isLoggedIn && isLoggingIn) return '/home';

    // No redirection needed, proceed normally
    return null;
  }, // شاشة البداية
  routes: $appRoutes, // المتغير ده بيتولد تلقائيًا من الـ Classes اللي تحت
);

@TypedGoRoute<LoginRoute>(path: '/login')
class LoginRoute extends GoRouteData with $LoginRoute {
  // 💡 Added 'with $LoginRoute' here
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LoginScreen();
}

// ==========================================
// 3. بناء الـ Shell Route (Bottom Nav Bar)
// ==========================================
@TypedStatefulShellRoute<AppShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<HomeBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<HomeRoute>(
          path: '/home',
          routes: <TypedRoute<RouteData>>[
            TypedGoRoute<NewHabitRoute>(path: '/new-habit'),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<AnalyticsBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<SelectPartnerRoute>(
          path: '/select-partner',
          routes: <TypedRoute<RouteData>>[
            TypedGoRoute<AnalyticsRoute>(path: '/analytics'),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<ProfileBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<ProfileRoute>(path: '/profile'),
      ],
    ),
  ],
)
class AppShellRouteData extends StatefulShellRouteData {
  const AppShellRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    // بنمرر الـ navigationShell للـ Scaffold الخارجي عشان يرسم الـ Bottom NavBar
    return BottomNavBarScaffold(navigationShell: navigationShell);
  }
}

// ==========================================
// 4. تعريف الـ Branches (الأفرع بتاعة الـ Tabs)
// ==========================================
class HomeBranchData extends StatefulShellBranchData {
  const HomeBranchData();
}

class AnalyticsBranchData extends StatefulShellBranchData {
  const AnalyticsBranchData();
}

class ProfileBranchData extends StatefulShellBranchData {
  const ProfileBranchData();
}

// ==========================================
// 5. تعريف الـ Concrete Routes (الشاشات الفردية)
// ==========================================

// شاشة الـ Home
class HomeRoute extends GoRouteData with $HomeRoute {
  const HomeRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

// شاشة الـ New Habit (الشاشة اللي عملنا البلوك بتاعها)
class NewHabitRoute extends GoRouteData with $NewHabitRoute {
  const NewHabitRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const NewHabitScreen();
}

class AnalyticsRoute extends GoRouteData with $AnalyticsRoute {
  const AnalyticsRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AnalyticsPage();
}

class SelectPartnerRoute extends GoRouteData with $SelectPartnerRoute {
  const SelectPartnerRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SelectPartnerPage();
}

class ProfileRoute extends GoRouteData with $ProfileRoute {
  const ProfileRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ProfileScreen();
}
