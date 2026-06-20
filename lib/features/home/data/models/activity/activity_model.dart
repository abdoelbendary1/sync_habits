import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sync_habits/features/auth/data/model/user_model.dart';


part 'activity_model.freezed.dart';
part 'activity_model.g.dart';

@freezed
abstract class ActivityModel with _$ActivityModel {
  const factory ActivityModel({
    required String id,
    required UserModel user, // 👈 كدة هيقراها صح
    required String habitTitle,
    required DateTime completedAt,
    required int currentStreak,
    @Default(false) bool isHighFied,
  }) = _ActivityModel;

  factory ActivityModel.fromJson(Map<String, dynamic> json) => _$ActivityModelFromJson(json);
}