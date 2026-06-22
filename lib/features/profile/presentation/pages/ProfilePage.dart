import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sync_habits/core/service_locator/injection.dart';
import 'package:sync_habits/features/profile/presentation/bloc/bloc/user_bloc.dart';
import 'package:sync_habits/features/profile/presentation/widgets/profile_view.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // If UserBloc is provided globally at the root (main.dart),
    // you can remove BlocProvider here and just use const ProfileView() directly.
    return BlocProvider<UserBloc>(
      create: (context) =>
          getIt<UserBloc>()..add(const UserEvent.fetchUserProfile()),
      child: const Scaffold(
        backgroundColor: Color(0xff0b120f),
        body: SafeArea(child: ProfileView()),
      ),
    );
  }
}
