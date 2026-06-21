import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sync_habits/features/auth/data/model/user_model.dart';
import 'package:sync_habits/features/home/data/models/activity/activity_model.dart'; // 👈 1. ضفنا الـ Import الناقص

part 'partner_activity_event.dart';
part 'partner_activity_state.dart';
part 'partner_activity_bloc.freezed.dart'; // 👈 زود السطر ده هنا حالا!

@injectable // 👈 3. الـ الأنوتيشن دلوقتي هشتغل صح لأن الكلاس مش abstract
class PartnerActivityBloc
    extends Bloc<PartnerActivityEvent, PartnerActivityState> {
  // 4. الـ Constructor السليم وأقواسه مظبوطة والـ Initial State صحيحة
  PartnerActivityBloc() : super(const PartnerActivityState.initial()) {
    // 5. استقبال الـ Events وتوزيعها (بما إننا شغالين بـ الـ map السحرية عشان متكتبش أسامي الكلاسات المزعجة)
    on<PartnerActivityEvent>((event, emit) async {
      await event.map(
        fetchRequested: (e) => _onFetchRequested(e, emit),
        sendHighFiRequested: (e) => _onSendHighFiRequested(e, emit),
      );
    });
  }

  Future<void> _onFetchRequested(
    dynamic event,
    Emitter<PartnerActivityState> emit,
  ) async {
    emit(const PartnerActivityState.loading());
    try {
      // هنا مستقبلاً هتجيب الداتا من الـ repository
      final List<ActivityModel> mockActivities = [
        ActivityModel(
          id: "1",
          user: UserModel(id: "1", name: 'Youssef', email: "", avatarUrl: ""),
          habitTitle: "Sleep",
          completedAt: DateTime.now(),
          currentStreak: 5,
        ),
        ActivityModel(
          id: "2",
          user: UserModel(id: "2", name: 'Youssef', email: "", avatarUrl: ""),
          habitTitle: "Gym Session",
          completedAt: DateTime.now(),
          currentStreak: 4,
        ),
        ActivityModel(
          id: "3",
          user: UserModel(id: "3", name: 'Youssef', email: "", avatarUrl: ""),
          habitTitle: "Hygiene",
          completedAt: DateTime.now(),
          currentStreak: 30,
        ),
      ];
      emit(PartnerActivityState.success(activities: mockActivities));
    } catch (e) {
      emit(PartnerActivityState.failure(e.toString()));
    }
  }

  Future<void> _onSendHighFiRequested(
    dynamic event,
    Emitter<PartnerActivityState> emit,
  ) async {
    // الـ Logic بتاع الـ High-fi
  }
}
