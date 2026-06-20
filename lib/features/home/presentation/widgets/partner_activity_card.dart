import 'package:flutter/material.dart';

class PartnerActivityCard extends StatelessWidget {
  final String partnerName;
  final String completedHabit;
  final String timeAgo;
  final int streak;

  const PartnerActivityCard({
    super.key,
    required this.partnerName,
    required this.completedHabit,
    required this.timeAgo,
    required this.streak,
  });

  @override
  Widget build(BuildContext context) {
    final primaryColor = const Color(0xFF00E676);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF161F1A),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 22,
                backgroundColor: Colors.white10,
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=200',
                ), // مجرد دامي لربط الـ Avatar
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        children: [
                          TextSpan(
                            text: '$partnerName ',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(text: 'completed '),
                          TextSpan(
                            text: completedHabit,
                            style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '$timeAgo • Streak: $streak days',
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),

              // 👇 الحل السحري هنا: قفلنا المساحة الأفقية للزرار عشان الـ Row يفهمه
              SizedBox(
                width: 130, // حددنا العرض المناسب لكلمة High-five مع الأيقونة
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.pan_tool_outlined,
                    size: 16,
                    color: Colors.black,
                  ),
                  label: const Text(
                    'High-five',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    // عملنا كسر للـ double.infinity بتاع الـ Theme عشان ما ينفجرش جوه الـ Row
                    minimumSize: const Size(0, 40),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Divider(color: Colors.white10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    const Icon(
                      Icons.notifications_none,
                      color: Colors.grey,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "$partnerName hasn't started 'Reading' yet.",
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Nudge Partner',
                  style: TextStyle(
                    color: Color(0xFFFFD54F),
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
