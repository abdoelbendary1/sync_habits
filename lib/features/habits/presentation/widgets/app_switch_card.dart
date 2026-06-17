import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sync_habits/core/theme/app_sizes.dart';
import 'package:sync_habits/core/theme/app_theme.dart';

class AppSwitchCard extends StatelessWidget {
  final bool isEnabledSwitchOn;
  final Function(bool)? onToggle;
  final String title;
  final String? subtitle;
  final IconData icon;
  const AppSwitchCard({
    super.key,
    this.onToggle,
    this.isEnabledSwitchOn = false,
    required this.title,
    this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final themeColors = context.colors;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(AppSizes.paddingDefault),
      decoration: BoxDecoration(
        color: context.colors.cardBackground,
        borderRadius: BorderRadius.circular(AppSizes.radiusLarge),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.radiusSmall),
            ),
            child: Icon(icon, color: context.colors.neonGreen, size: 20.r),
          ),
          15.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: themeColors.textMuted,
                  ),
                ),
                if (subtitle != null)
                  Text(
                    subtitle!,
                    style: textTheme.bodyMedium?.copyWith(
                      color: themeColors.textMuted,
                    ),
                  ),
              ],
            ),
          ),
          Switch(value: isEnabledSwitchOn, onChanged: onToggle),
        ],
      ),
    );
  }
}
