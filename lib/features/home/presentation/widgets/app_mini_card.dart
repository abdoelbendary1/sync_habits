import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sync_habits/core/theme/app_sizes.dart';
import 'package:sync_habits/core/theme/app_theme.dart';

class AppMiniCard extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  
  const AppMiniCard({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.labelSmall),
        10.verticalSpace,
        Container(
          padding: EdgeInsets.all(
            AppSizes.paddingDefault,
          ), // حواف الكارت متكيفة أوتوماتيك
          decoration: BoxDecoration(
            color: context.colors.cardBackground,
            borderRadius: BorderRadius.circular(AppSizes.radiusDefault),
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: context.colors.neonGreen,
                size: 18.r,
              ), // حجم الأيقونة متكيف بالـ .r
              10.horizontalSpace,
              Text(
                value,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
