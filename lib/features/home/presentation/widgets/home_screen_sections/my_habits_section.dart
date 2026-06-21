import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sync_habits/core/theme/app_colors.dart';
import 'package:sync_habits/features/home/presentation/bloc/habits/habits_bloc.dart';
import 'package:sync_habits/features/home/presentation/widgets/home_screen_sections/habit_item_card.dart';

class MyHabitsSection extends StatelessWidget {
  const MyHabitsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HabitsBloc, HabitsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => SizedBox(
            height: 150.r,
            child: const Center(child: CircularProgressIndicator()),
          ),
          success:
              (
                habits,
                completedHabits,
                uncompletedHabits,
                isSynced,
                cardBorderRadius,
              ) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'My Habits',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${uncompletedHabits.length} remaining',
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: habits.length,
                      itemBuilder: (context, index) {
                        final habit = habits[index];

                        return Dismissible(
                          // onUpdate: (details) {
                          //   if (details.direction !=
                          //       DismissDirection.endToStart) {
                          //     context.read<HabitsBloc>().add(
                          //       HabitsEvent.swipeCard(0),
                          //     );
                          //   }
                          // },
                          key: Key(habit.id ?? ''),
                          direction: DismissDirection.endToStart,
                          onDismissed: (_) => context.read<HabitsBloc>().add(
                            HabitsEvent.deleteHabit(habit),
                          ),
                          background: Container(
                            margin: const EdgeInsets.only(bottom: 12),
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: AppColors.red,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.delete,
                              color: Colors.white,
                              size: 24.r,
                            ),
                          ),
                          child: HabitItemCard(
                            habit: habit,
                            borderRadius: cardBorderRadius!,
                            onToggle: () {
                              context.read<HabitsBloc>().add(
                                HabitsEvent.toggleHabitCompletion(
                                  habit.id ?? '',
                                  !(habit.isCompletedToday ?? false),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ],
                );
              },
          failure: (errorMessage) => Text(
            'Error: $errorMessage',
            style: const TextStyle(color: Colors.red),
          ),
        );
      },
    );
  }
}
