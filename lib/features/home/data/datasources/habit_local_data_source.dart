import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:sync_habits/features/home/domain/entities/habit_entity.dart';
import '../models/habit_model.dart';

abstract class HabitLocalDataSource {
  // جلب كل العادات المخزنة على الجهاز كـ Stream (عشان الـ UI يتحدث تلقائياً)
  Stream<List<HabitModel>> getCachedHabits();
  Future<List<HabitModel>> getTodayHabits();

  // حفظ عادة جديدة أو تحديث عادة موجودة في الكاش
  Future<void> cacheHabit(HabitModel habit);

  // حفظ قائمة كاملة من العادات (مثلاً لما نيجي نـ sync من السيرفر)
  Future<void> cacheAllHabits(List<HabitModel> habits);

  // حذف عادة
  Future<void> deleteHabit(String id);
  Future<void> toggleHabitCompletion(String id);
  Future<void> updateHabit(HabitEntity habit);
  Future<void> reorderHabits(List<HabitEntity> habits);
}

@LazySingleton(as: HabitLocalDataSource)
class HabitLocalDataSourceImpl implements HabitLocalDataSource {
  final Box _habitBox;

  // بنمرر الـ Box من بره (Dependency Injection) عشان نقدر نعمل Unit Test بسهولة بعدين
  HabitLocalDataSourceImpl(@Named('habitBox') this._habitBox);
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

  @override
  Future<void> deleteHabit(String id) {
    return _habitBox.delete(id);
  }

  @override
  Future<void> toggleHabitCompletion(String id) {
    final habit = _habitBox.get(id);
    final updatedHabit = habit!.copyWith(
      isCompletedToday: !habit.isCompletedToday!,
    );
    return _habitBox.put(id, updatedHabit);
  }

  @override
  Future<void> reorderHabits(List<HabitEntity> habits) async {}

  @override
  Future<void> updateHabit(HabitEntity habit) {
    return _habitBox.put(habit.id, habit);
  }

  @override
  Future<List<HabitModel>> getTodayHabits() async {
    return _habitBox.values
        .map(
          (dynamic json) =>
              HabitModel.fromJson(Map<String, dynamic>.from(json)),
        )
        .toList();
  }
}
