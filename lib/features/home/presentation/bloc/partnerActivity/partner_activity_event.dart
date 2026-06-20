part of 'partner_activity_bloc.dart';

@freezed
class PartnerActivityEvent with _$PartnerActivityEvent {
  const factory PartnerActivityEvent.fetchRequested() = PartnerActivityEventFetchRequested;
  const factory PartnerActivityEvent.sendHighFiRequested() = PartnerActivityEventSendHighFiRequested;
}