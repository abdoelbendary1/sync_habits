// features/profile/presentation/widgets/sync_score_card.dart
import 'package:flutter/material.dart';
import 'package:sync_habits/core/theme/app_colors.dart';

class SyncScoreCard extends StatelessWidget {
  final int score;
  final String tierLabel;
  const SyncScoreCard({
    super.key,
    required this.score,
    required this.tierLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xff161d1a),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "TOTAL SYNC SCORE",
                style: TextStyle(
                  color: Color(0xff00e676),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    "$score",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    " /100",
                    style: TextStyle(color: Colors.grey[500], fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              const Icon(Icons.speed, color: Color(0xff00e676), size: 32),
              const SizedBox(height: 6),
              Text(
                tierLabel,
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
