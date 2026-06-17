import 'package:flutter/material.dart';
import '../widgets/performance_calendar.dart';
import '../widgets/analytics_card.dart';

class MyStatsView extends StatelessWidget {
  const MyStatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PerformanceCalendar(monthYear: 'OCTOBER 2023'),
        const SizedBox(height: 16),
        const AnalyticsCard(
          title: 'Current Streak',
          value: '12 Days',
          subtitle: '',
          icon: Icons.local_fire_department,
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: AnalyticsCard(
                title: 'Completion Rate',
                value: '88%',
                subtitle: '',
                extraWidget: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LinearProgressIndicator(
                      value: 0.88,
                      backgroundColor: Colors.white10,
                      color: const Color(0xFF00E676),
                      minHeight: 6,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: AnalyticsCard(
                title: 'Total Sync Days',
                value: '24 Days',
                subtitle: '',
                extraWidget: Row(children: [_buildAvatarOverlap()]),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildAvatarOverlap() {
    return SizedBox(
      height: 30,
      width: 80,
      child: Stack(
        children: [
          const CircleAvatar(radius: 14, backgroundColor: Color(0xFF00E676)),
          Positioned(
            left: 18,
            child: CircleAvatar(
              radius: 14,
              backgroundColor: const Color(0xFFFFD54F).withOpacity(0.7),
            ),
          ),
          Positioned(
            left: 36,
            child: CircleAvatar(
              radius: 14,
              backgroundColor: Colors.white10,
              child: Text(
                '+5',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
