import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sync_habits/features/profile/presentation/bloc/bloc/user_bloc.dart';
import 'package:sync_habits/features/profile/presentation/widgets/achievement_section.dart';
import 'profile_header.dart';
import 'sync_score_card.dart';
import 'stats_grid.dart';
import 'settings_tile_group.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    // Dark UI Canvas implementation as per visual guidelines
    return Container(
      color: const Color(0xff0b120f), 
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator(color: Color(0xff00e676))),
            loading: () => const Center(child: CircularProgressIndicator(color: Color(0xff00e676))),
            error: (msg) => Center(child: Text('Error: $msg', style: const TextStyle(color: Colors.red))),
            loaded: (user, syncSettingsActive) {
              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileHeader(user: user),
                    const SizedBox(height: 24),
                    const SyncScoreCard(score: 94, tierLabel: "Elite Performance"),
                    const SizedBox(height: 24),
                    const AchievementBadgesSection(),
                    const SizedBox(height: 24),
                    const StatsGrid(),
                    const SizedBox(height: 24),
                    SettingsTileGroup(syncSettingsActive: syncSettingsActive),
                    const SizedBox(height: 24),
                    
                    // Log Out Action Button
                    SizedBox(
                      width: double.infinity,
                      height: 54,
                      child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: const Color(0xff222825),
                          side: BorderSide.none,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        ),
                        onPressed: () => context.read<UserBloc>().add(const UserEvent.logOut()),
                        icon: const Icon(Icons.logout, color: Colors.white70, size: 20),
                        label: const Text("Log Out", style: TextStyle(color: Colors.white70, fontSize: 16)),
                      ),
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}