import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sync_habits/core/enums/Habit_category.dart';
import 'package:sync_habits/features/home/domain/entities/habit_entity.dart';

class HabitItemCard extends StatelessWidget {
  final HabitEntity? habit;
  final double borderRadius;
  final VoidCallback? onToggle;

  const HabitItemCard({
    super.key,
    this.habit,
    this.onToggle,
    this.borderRadius = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    final activeColor = const Color(0xFF00E676);
    final habitIcon = HabitCategory.values
        .firstWhere(
          (category) => category.id == int.tryParse(habit?.categoryId ?? ''),
          orElse: () => HabitCategory.fitness, // Safe fallback default
        )
        .icon;
    final isCompleted = habit?.isCompletedToday ?? false;
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: const Color(0xFF161F1A),
        // borderRadius: BorderRadius.circular(borderRadius.r),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              color: isCompleted
                  ? activeColor.withOpacity(0.1)
                  : Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(
              habitIcon,
              color: isCompleted ? activeColor : Colors.white70,
              size: 24,
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  habit?.title ?? '',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                //  subtitle == null
                //     ? const SizedBox()
                //     : Text(
                //         subtitle!,
                //         style: const TextStyle(
                //           color: Colors.grey,
                //           fontSize: 13,
                //         ),
                //       ),
              ],
            ),
          ),
          InkWell(
            onTap: onToggle,
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: isCompleted ? activeColor : Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isCompleted ? Colors.transparent : Colors.white24,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
              child: isCompleted
                  ? const Icon(Icons.check, color: Colors.black, size: 24)
                  : const Icon(Icons.check, color: Colors.white38, size: 20),
            ),
          ),
        ],
      ),
    );
  }
}
