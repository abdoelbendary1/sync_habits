// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get syncHabit => 'مزامنة العادات';

  @override
  String get myHabits => 'عاداتي';

  @override
  String habitsRemaining(int count) {
    return 'متبقي $count';
  }

  @override
  String get newHabit => 'عادة جديدة';

  @override
  String get habitName => 'اسم العادة';

  @override
  String get habitNameHint => 'مثال: القراءة لمدة ٣٠ دقيقة';

  @override
  String get saveHabit => 'حفظ العادة';

  @override
  String get repeatDaily => 'تكرار يومي';
}
