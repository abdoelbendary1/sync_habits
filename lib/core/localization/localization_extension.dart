import 'package:flutter/material.dart';
import 'package:sync_habits/core/localization/arb/app_localizations.dart';

extension LocalizationContextExtension on BuildContext {
  /// اختصار عبقري للوصول لملفات الترجمة بنظافة
  AppLocalizations? get l10n => AppLocalizations.of(this);

  /// معرفة هل اللغة الحالية عربية (RTL) أم لا (مفيد في بعض الحالات الخاصة بالـ UI)
  bool get isArabic => Localizations.localeOf(this).languageCode == 'ar';
}
