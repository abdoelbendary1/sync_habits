part of 'partner_activity_bloc.dart';

@freezed
class PartnerActivityState with _$PartnerActivityState {
  const factory PartnerActivityState.initial() = _Initial;
  const factory PartnerActivityState.loading() = _Loading;
  const factory PartnerActivityState.success({
    required List<ActivityModel> activities,
  }) = _Success;
  const factory PartnerActivityState.failure(String errorMessage) = _Failure;
}