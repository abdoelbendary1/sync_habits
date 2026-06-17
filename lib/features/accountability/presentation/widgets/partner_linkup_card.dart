import 'package:flutter/material.dart';

class PartnerLinkupCard extends StatelessWidget {
  final String name;
  final String avatarUrl;
  final String activeTime;
  final int syncScore;
  final int currentStreak;
  final int sharedHabitsCount;
  final VoidCallback onTap;

  const PartnerLinkupCard({
    super.key,
    required this.name,
    required this.avatarUrl,
    required this.activeTime,
    required this.syncScore,
    required this.currentStreak,
    required this.sharedHabitsCount,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // تحديد لون الـ Sync Score بناءً على النسبة (أخضر للنسب العالية، أصفر للمتوسطة)
    final scoreColor = syncScore >= 80 ? const Color(0xFF00E676) : const Color(0xFFFFD54F);

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF161F1A),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white10),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Column(
          children: [
            // الجزء العلوي: الصورة، الاسم، وحالة النشاط والـ Score
            Row(
              children: [
                CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.white10,
                  backgroundImage: NetworkImage(avatarUrl),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const Icon(Icons.access_time, color: Colors.grey, size: 14),
                          const SizedBox(width: 4),
                          Text('Active $activeTime', style: const TextStyle(color: Colors.grey, fontSize: 13)),
                        ],
                      ),
                    ],
                  ),
                ),
                // الـ Sync Score Badge الفخم
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: scoreColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: scoreColor.withOpacity(0.3)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.bolt, color: scoreColor, size: 16),
                      Text(
                        ' $syncScore%',
                        style: TextStyle(color: scoreColor, fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Divider(color: Colors.white10, height: 1),
            const SizedBox(height: 12),
            // الجزء السفلي: الـ Streak والـ Shared Habits
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Icons.emoji_events_outlined, color: Color(0xFFFFD54F), size: 18),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Current Streak', style: TextStyle(color: Colors.grey, fontSize: 11)),
                          Text('$currentStreak Days', style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Icons.insert_chart_outlined, color: Colors.grey, size: 18),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Shared Habits', style: TextStyle(color: Colors.grey, fontSize: 11)),
                          Text('$sharedHabitsCount active', style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}