import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:sync_habits/features/home/presentation/bloc/partnerActivity/partner_activity_bloc.dart';
import 'package:sync_habits/features/home/presentation/widgets/home_screen_sections/partner_activity_card.dart';

class PartnerActivitySection extends StatelessWidget {
  const PartnerActivitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        BlocBuilder<PartnerActivityBloc, PartnerActivityState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              loading: () => SizedBox(
                height: 150.r,
                child: const Center(child: CircularProgressIndicator()),
              ),
              success: (activities) => SizedBox(
                height: 150.h, // Explicit height track is perfect here!
                child: ListView.builder(
                  // 1. Remove NeverScrollableScrollPhysics so users can actually scroll horizontally
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: activities.length,
                  itemBuilder: (context, index) {
                    final activity = activities[index];
                    return Padding(
                      // 2. Add some right spacing so the cards don't stick together
                      padding: EdgeInsets.only(right: 12.w),
                      child: PartnerActivityCard(
                        partnerName: activity.user.name,
                        completedHabit: activity.habitTitle,
                        timeAgo: DateFormat.yMMMd().format(
                          activity.completedAt,
                        ),
                        streak: activity.currentStreak,
                      ),
                    );
                  },
                ),
              ),
              failure: (errorMessage) => Text(
                'Error: $errorMessage',
                style: const TextStyle(color: Colors.red),
              ),
            );
          },
        ),
      ],
    );
  }
}
