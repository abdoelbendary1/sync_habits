import 'package:hive/hive.dart';
import '../models/habit_model.dart';

abstract class HabitLocalDataSource {
  // جلب كل العادات المخزنة على الجهاز كـ Stream (عشان الـ UI يتحدث تلقائياً)
  Stream<List<HabitModel>> getCachedHabits();

  // حفظ عادة جديدة أو تحديث عادة موجودة في الكاش
  Future<void> cacheHabit(HabitModel habit);

  // حفظ قائمة كاملة من العادات (مثلاً لما نيجي نـ sync من السيرفر)
  Future<void> cacheAllHabits(List<HabitModel> habits);
}

class HabitLocalDataSourceImpl implements HabitLocalDataSource {
  final Box _habitBox;

  // بنمرر الـ Box من بره (Dependency Injection) عشان نقدر نعمل Unit Test بسهولة بعدين
  HabitLocalDataSourceImpl(this._habitBox);

  @override
  Stream<List<HabitModel>> getCachedHabits() {
    // الـ Stream ده هيفضل مفتوح وبيبعت قائمة العادات المحدثة كل ما يحصل تغيير جوه الـ Box
    return _habitBox.watch().map((_) {
      return _habitBox.values
          .map(
            (dynamic json) =>
                HabitModel.fromJson(Map<String, dynamic>.from(json)),
          )
          .toList();
    });
  }

  @override
  Future<void> cacheHabit(HabitModel habit) async {
    // بنسيف العادة في الـ Box وبنستخدم الـ ID بتاعها كـ Key
    await _habitBox.put(habit.id, habit.toJson());
  }

  @override
  Future<void> cacheAllHabits(List<HabitModel> habits) async {
    // بنحول اللستة لـ Map ونخزنها دفعة واحدة لتوفير الأداء
    final Map<String, dynamic> habitMap = {
      for (var habit in habits) ?habit.id: habit.toJson(),
    };
    await _habitBox.putAll(habitMap);
  }
}
