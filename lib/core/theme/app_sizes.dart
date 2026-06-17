import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSizes {
  AppSizes._();

  // 📐 الـ Paddings والـ Margins (Responsive)
  static double get paddingXS => 4.0.w;
  static double get paddingSmall => 8.0.w;
  static double get paddingDefault => 16.0.w;
  static double get paddingLarge => 24.0.w;
  static double get paddingXL => 32.0.w;

  // ↪️ الـ Border Radii للكروت والأزرار (Responsive)
  static double get radiusSmall => 8.0.r;
  static double get radiusDefault => 12.0.r;
  static double get radiusLarge => 16.0.r;
  static double get radiusXL => 24.0.r;

  // 🔤 أحجام الخطوط الموحدة للتطبيق (Font Sizes System Using .sp)
  /// حجم 32sp - للعناوين الضخمة جداً (مثل الـ Streak Counter الكبير أو الترحيب)
  static double get fontDisplay => 32.0.sp;

  /// حجم 24sp - لعناوين الشاشات الرئيسية (مثل "My Habits")
  static double get fontHeadline => 24.0.sp;

  /// حجم 20sp - لعناوين الـ App Bars أو الكروت الكبيرة
  static double get fontTitleLarge => 20.0.sp;

  /// حجم 16sp - للنصوص الأساسية المهمة وأسماء العادات (Body Large)
  static double get fontBodyLarge => 16.0.sp;

  /// حجم 14sp - للنصوص الثانوية والـ Subtitles تحت العادات (Body Medium)
  static double get fontBodyMedium => 14.0.sp;

  /// حجم 12sp - للـ Labels الصغيرة جداً المكتوبة بكابيتال (مثل "HABIT NAME" أو "PARTNER ACTIVITY")
  static double get fontLabelSmall => 12.0.sp;
}

extension WidgetPaddingExtension on Widget {
  /// لف الـ Widget بـ Padding متساوي من جميع الاتجاهات (All)
  /// الافتراضي هو 16.0 إذا لم تقم بتمرير قيمة
  Widget padAll([double value = 16.0]) {
    return Padding(padding: EdgeInsets.all(value), child: this);
  }

  /// لف الـ Widget بـ Padding أفقي ورأسي (Symmetric)
  Widget padSymmetric({double horizontal = 0.0, double vertical = 0.0}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: this,
    );
  }

  /// لف الـ Widget بـ Padding من اتجاهات مخصصة (Only)
  Widget padOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: left,
        top: top,
        right: right,
        bottom: bottom,
      ),
      child: this,
    );
  }

  /// لف الـ Widget بـ Padding يدعم الاتجاهات التلقائية (RTL / LTR)
  /// مفيد جداً مع الـ Localization عشان الـ Left يقلب Right تلقائياً في العربي
  /// لف الـ Widget بـ Padding يدعم الاتجاهات التلقائية (RTL / LTR)
  /// مفيد جداً مع الـ Localization عشان الـ Left يقلب Right تلقائياً في العربي
  Widget padDirectional({
    double start = 0.0,
    double top = 0.0,
    double end = 0.0,
    double bottom = 0.0,
  }) {
    return Padding(
      // 👇 تم تصحيح الكلاس هنا إلى EdgeInsetsDirectional
      padding: EdgeInsetsDirectional.fromSTEB(start, top, end, bottom),
      child: this,
    );
  }
}
