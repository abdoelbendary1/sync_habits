import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    const primaryColor = Color(0xFF00E676);

    // 💡 SENIOR FIX: Wrap with a fixed-width container so the horizontal ListView
    // knows exactly where this card ends, allowing Expanded widgets inside to calculate correctly.
    return SizedBox(
      width: 320.w,
      child: Container(
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          color: const Color(0xFF161F1A),
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: Colors.white10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Constrains vertical footprint
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.white10,
                  backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=200',
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          children: [
                            TextSpan(
                              text: '$partnerName ',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const TextSpan(text: 'completed '),
                            TextSpan(
                              text: completedHabit,
                              style: const TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        '$timeAgo • Streak: $streak days',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8.w),
                SizedBox(
                  width: 110.w, // Scaled explicitly with screen util
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
                        fontSize: 12,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      minimumSize: Size(0, 36.h),
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              // Changed to a simple Container line to avoid Divider constraints layout issues inside horizontal lists
              child: Container(height: 1, color: Colors.white10),
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
                      SizedBox(width: 8.w),
                      Expanded(
                        child: Text(
                          "$partnerName hasn't started 'Reading' yet.",
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: const Text(
                    'Nudge Partner',
                    style: TextStyle(
                      color: Color(0xFFFFD54F),
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
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
