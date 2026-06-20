import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sync_habits/core/theme/app_sizes.dart';
import 'package:sync_habits/core/theme/app_theme.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final double? height;

  const AppButton({
    super.key,
    required this.label,
    this.onPressed,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final themeColors = context.colors;
    final textTheme = Theme.of(context).textTheme;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: themeColors.neonGreen,
        foregroundColor: Colors.black,
        minimumSize: Size(double.infinity, height ?? 56.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppSizes.radiusLarge,
          ), // راديوس متكيف من الـ Design System
        ),
      ),
      child: Text(
        label,
        style: textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: themeColors.cardBackground,
        ),
      ), // تعريب نص الحفظ
    );
  }
}
