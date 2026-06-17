import 'package:flutter/material.dart';
import 'package:sync_habits/core/theme/app_sizes.dart';

/// 1. الـ Theme Extension المخصص لتسجيل ألوان النيون والخلفيات الداكنة الفخمة
/// اللي مش موجودة افتراضياً في الـ ThemeData الأساسي.
class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  final Color neonGreen;
  final Color cardBackground;
  final Color syncGold;
  final Color textMuted;

  const AppColorsExtension({
    required this.neonGreen,
    required this.cardBackground,
    required this.syncGold,
    required this.textMuted,
  });

  @override
  ThemeExtension<AppColorsExtension> copyWith({
    Color? neonGreen,
    Color? cardBackground,
    Color? syncGold,
    Color? textMuted,
  }) {
    return AppColorsExtension(
      neonGreen: neonGreen ?? this.neonGreen,
      cardBackground: cardBackground ?? this.cardBackground,
      syncGold: syncGold ?? this.syncGold,
      textMuted: textMuted ?? this.textMuted,
    );
  }

  @override
  ThemeExtension<AppColorsExtension> lerp(
    ThemeExtension<AppColorsExtension>? other,
    double t,
  ) {
    if (other is! AppColorsExtension) return this;
    return AppColorsExtension(
      neonGreen: Color.lerp(neonGreen, other.neonGreen, t)!,
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t)!,
      syncGold: Color.lerp(syncGold, other.syncGold, t)!,
      textMuted: Color.lerp(textMuted, other.textMuted, t)!,
    );
  }
}

/// 2. فئة الـ AppTheme الرئيسية التي تحتوي على الـ Dark والـ Light التجهيزات كاملة
class AppTheme {
  AppTheme._();

  // لوحة ألوان الـ Dark Theme الثابتة من الديزاين
  static const _darkBg = Color(0xFF0A0F0C);
  static const _darkCard = Color(0xFF161F1A);
  static const _neonGreen = Color(0xFF00E676);
  static const _syncGold = Color(0xFFFFD54F);
  static const _darkTextPrimary = Colors.white;
  static const _darkTextMuted = Color(0xFF8B948E);

  // لوحة ألوان الـ Light Theme (Clean Premium Light Mood)
  static const _lightBg = Color(0xFFF4F7F5);
  static const _lightCard = Colors.white;
  static const _lightTextPrimary = Color(0xFF0A0F0C);
  static const _lightTextMuted = Color(0xFF66706A);

  /// --------------------------------------------------------------------------
  /// DARK THEME (The Core Identity of SyncHabits)
  /// --------------------------------------------------------------------------
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: _darkBg,

      // إدخال الألوان المخصصة عبر الـ Extension
      extensions: const [
        AppColorsExtension(
          neonGreen: _neonGreen,
          cardBackground: _darkCard,
          syncGold: _syncGold,
          textMuted: _darkTextMuted,
        ),
      ],

      // تظبيط الـ App Bar
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        iconTheme: IconThemeData(color: _darkTextPrimary),
        titleTextStyle: TextStyle(
          color: _darkTextPrimary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),

      // تظبيط الـ Typography والـ Texts
      // جوه ملف app_theme.dart
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          color: _darkTextPrimary,
          fontSize: AppSizes.fontDisplay, // 32.sp
          fontWeight: FontWeight.bold,
        ),
        titleLarge: TextStyle(
          color: _darkTextPrimary,
          fontSize: AppSizes.fontTitleLarge, // 20.sp
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(
          color: _darkTextPrimary,
          fontSize: AppSizes.fontBodyLarge, // 16.sp
        ),
        bodyMedium: TextStyle(
          color: _darkTextMuted,
          fontSize: AppSizes.fontBodyMedium, // 14.sp
        ),
        labelSmall: TextStyle(
          color: _darkTextMuted,
          fontSize: AppSizes.fontLabelSmall, // 12.sp
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
      ),

      // تظبيط ال_ Input TextFields (حقول الإدخال)
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          color: _darkTextPrimary.withOpacity(0.2),
          fontSize: 24,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white10),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: _neonGreen),
        ),
        labelStyle: const TextStyle(color: _darkTextMuted),
      ),

      // تظبيط الـ Buttons (الـ Elevated الفخم الرمادي الفاتح والـ Neon)
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(
            0xFFE0E5E1,
          ), // اللون العاجي الفاتح لزريار الـ Nudge والـ Link
          foregroundColor: Colors.black,
          minimumSize: const Size(double.infinity, 55),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          elevation: 0,
        ),
      ),

      // تظبيط الـ Floating Action Button
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: _neonGreen,
        foregroundColor: Colors.black,
        elevation: 2,
        shape: CircleBorder(),
      ),

      // تظبيط الـ Bottom Navigation Bar
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: _darkBg,
        selectedItemColor: _neonGreen,
        unselectedItemColor: _darkTextMuted,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),

      // تظبيط الـ Switch
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return Colors.black;
          return Colors.grey;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return _neonGreen;
          return Colors.white10;
        }),
      ),
    );
  }

  /// --------------------------------------------------------------------------
  /// LIGHT THEME (Clean, Minimalist Alternative)
  /// --------------------------------------------------------------------------
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: _lightBg,

      extensions: const [
        AppColorsExtension(
          neonGreen: Color(
            0xFF00C853,
          ), // درجة أغمق قليلاً للـ Light mode عشان الـ Accessibility
          cardBackground: _lightCard,
          syncGold: Color(0xFFF5B041),
          textMuted: _lightTextMuted,
        ),
      ],

      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        iconTheme: IconThemeData(color: _lightTextPrimary),
        titleTextStyle: TextStyle(
          color: _lightTextPrimary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),

      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          color: _lightTextPrimary,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
        titleLarge: TextStyle(
          color: _lightTextPrimary,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(color: _lightTextPrimary, fontSize: 16),
        bodyMedium: TextStyle(color: _lightTextMuted, fontSize: 14),
        labelSmall: TextStyle(
          color: _lightTextMuted,
          fontSize: 12,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          color: _lightTextPrimary.withOpacity(0.2),
          fontSize: 24,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black12),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF00C853)),
        ),
        labelStyle: const TextStyle(color: _lightTextMuted),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(
            0xFF0A0F0C,
          ), // الزرار يقلب أسود داكن في الـ Light لمظهر قوي
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 55),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          elevation: 0,
        ),
      ),

      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFF00C853),
        foregroundColor: Colors.white,
        elevation: 2,
        shape: CircleBorder(),
      ),

      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: _lightBg,
        selectedItemColor: Color(0xFF00C853),
        unselectedItemColor: _lightTextMuted,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),
    );
  }
}

/// 3. الـ Shortcut Global Extension عشان تسهل نداء الألوان جوه الـ Widgets بسطر واحد
extension AppThemeContextOn on BuildContext {
  AppColorsExtension get colors =>
      Theme.of(this).extension<AppColorsExtension>()!;
}
