// features/profile/presentation/widgets/achievement_badges_section.dart
import 'package:flutter/material.dart';
import 'package:sync_habits/core/theme/app_colors.dart';

class AchievementBadgesSection extends StatelessWidget {
  const AchievementBadgesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "ACHIEVEMENT BADGES",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.8,
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 130,
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            children: [
              _buildBadgeCard(
                "30 Day Streak",
                Icons.verified,
                const Color(0xff112e20),
                const Color(0xff00e676),
              ),
              _buildBadgeCard(
                "Early Bird",
                Icons.wb_sunny,
                const Color(0xff2b2413),
                Colors.amber,
              ),
              _buildBadgeCard(
                "Sync Master",
                Icons.share,
                const Color(0xff112e20),
                const Color(0xff00e676),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBadgeCard(
    String label,
    IconData icon,
    Color bg,
    Color iconColor,
  ) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: const Color(0xff161d1a),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: bg,
            child: Icon(icon, color: iconColor, size: 24),
          ),
          const SizedBox(height: 12),
          Text(
            label,
            style:  TextStyle(
              color: AppColors.textPrimary,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
