import 'package:flutter/material.dart';
import '../widgets/performance_calendar.dart';
import '../widgets/analytics_card.dart';

class PartnerStatsView extends StatelessWidget {
  const PartnerStatsView({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF00E676);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // كارت البروفايل العلوي ليوسف
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFF161F1A),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.white10),
          ),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 28,
                backgroundColor: Colors.white10,
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=200',
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Joussef',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'PRODUCTIVITY PARTNER',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Row(
                    children: [
                      Icon(
                        Icons.local_fire_department,
                        color: Color(0xFFFFD54F),
                        size: 20,
                      ),
                      Text(
                        ' 12',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Bays Current\nStreak',
                    style: TextStyle(color: Colors.grey, fontSize: 11),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const PerformanceCalendar(monthYear: 'MARCH 2024'),
        const SizedBox(height: 16),
        Row(
          children: [
            const Expanded(
              child: AnalyticsCard(
                title: 'COMPLETION RATE',
                value: '92%',
                subtitle: '↗ +4r vs last mo',
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: AnalyticsCard(
                title: 'SYNC SCORE',
                value: '88/100',
                subtitle: '',
                extraWidget: Row(
                  children: const [
                    Icon(Icons.sync, color: Colors.grey, size: 16),
                    Text(
                      ' High Cohesion',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        const Text(
          'Top Habits This Week',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        _buildTopHabitTile('Gym Routine', '7/7 days', Icons.fitness_center),
        _buildTopHabitTile('Deep Work Reading', '6/7 days', Icons.menu_book),
        const SizedBox(height: 24),
        // زرار الـ Nudge السفلي المخصص ليوسف
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none, color: Colors.black),
          label: const Text(
            'Nudвe Youssef',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFE0E5E1),
            minimumSize: const Size(double.infinity, 55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }

  Widget _buildTopHabitTile(String title, String completion, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF161F1A),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey, size: 22),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  completion,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.check_circle_outline,
            color: Colors.white70,
            size: 20,
          ),
        ],
      ),
    );
  }
}
