import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sync_habits/core/service_locator/injection.dart';
import 'package:sync_habits/features/home/presentation/bloc/PartnershipSyncBloc/partnership_sync_bloc.dart';
import 'package:sync_habits/features/home/presentation/bloc/habits/habits_bloc.dart';
import 'package:sync_habits/features/home/presentation/bloc/partnerActivity/partner_activity_bloc.dart';
import 'package:sync_habits/features/home/presentation/widgets/app_button.dart';
import 'package:sync_habits/features/home/presentation/widgets/habit_item_card.dart';
import 'package:sync_habits/features/home/presentation/widgets/partner_activity_card.dart';
import 'package:sync_habits/features/home/presentation/widgets/partnership_status_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final bool isGymCompleted = true;
  final bool isHydrationCompleted = false;
  final bool isDeepWorkCompleted = false;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HabitsBloc>(create: (context) => getIt<HabitsBloc>()),

        BlocProvider<PartnerActivityBloc>(
          create: (context) => getIt<PartnerActivityBloc>(),
        ),
        BlocProvider<PartnershipSyncBloc>(
          create: (context) => getIt<PartnershipSyncBloc>(),
        ),
      ],
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(fontSize: 22, color: Colors.white),
                      children: [
                        TextSpan(
                          text: 'SyncHabit',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.white10,
                      child: Icon(Icons.person, color: Colors.white, size: 20),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20),

              BlocBuilder<PartnershipSyncBloc, PartnershipSyncState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const SizedBox.shrink(),
                    loading: () => const CircularProgressIndicator(),
                    success: (myProgress, partnerProgress, partnerName) =>
                        const PartnershipStatusCard(
                          myProgress: 0.65,
                          partnerProgress: 0.40,
                          partnerName: 'Youssef',
                        ),
                    failure: (errorMessage) => Text(
                      'Error: $errorMessage',
                      style: const TextStyle(color: Colors.red),
                    ),
                  );
                },
              ),
              const SizedBox(height: 24),

              BlocBuilder<HabitsBloc, HabitsState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'My Habits',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '3 remaining',
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          // AppButton(label:  'Add Habit', onPressed: null, height: 40,),
                        ],
                      ),
                      const SizedBox(height: 16),

                      HabitItemCard(
                        title: 'Hydration',
                        subtitle: 'Goal: 3L / 2.1L today',
                        icon: Icons.water_drop_outlined,
                        isCompleted: isHydrationCompleted,

                        // onToggle: () =>
                        //     setState(() => isHydrationCompleted = !isHydrationCompleted),
                      ),
                      HabitItemCard(
                        title: 'Deep Work',
                        subtitle: 'Focus block: 90 mins',
                        icon: Icons.psychology_outlined,
                        isCompleted: isDeepWorkCompleted,
                        // onToggle: () =>
                        //     setState(() => isDeepWorkCompleted = !isDeepWorkCompleted),
                      ),
                      HabitItemCard(
                        title: 'Gym',
                        subtitle: 'Daily Session',
                        icon: Icons.fitness_center,
                        isCompleted: isGymCompleted,
                        // onToggle: () => setState(() => isGymCompleted = !isGymCompleted),
                      ),
                    ],
                  );
                },
              ),

              const SizedBox(height: 24),

              const Text(
                'PARTNER ACTIVITY',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 12),
              const PartnerActivityCard(
                partnerName: 'Youssef',
                completedHabit: 'Gym Session',
                timeAgo: '2 mins ago',
                streak: 12,
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
