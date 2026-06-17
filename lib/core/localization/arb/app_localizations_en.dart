// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get syncHabit => 'SyncHabit';

  @override
  String get myHabits => 'My Habits';

  @override
  String habitsRemaining(int count) {
    return '$count remaining';
  }

  @override
  String get newHabit => 'New Habit';

  @override
  String get habitName => 'HABIT NAME';

  @override
  String get habitNameHint => 'e.g. Read for 30 mins';

  @override
  String get saveHabit => 'Save Habit';

  @override
  String get repeatDaily => 'REPEAT DAILY';
}
