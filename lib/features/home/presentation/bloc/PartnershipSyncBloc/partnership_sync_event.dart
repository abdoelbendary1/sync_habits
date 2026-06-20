part of 'partnership_sync_bloc.dart';

@freezed
class PartnershipSyncEvent with _$PartnershipSyncEvent {
  const factory PartnershipSyncEvent.started() = PartnershipSyncEventStarted;
  const factory PartnershipSyncEvent.refreshRequested() = PartnershipSyncEventRefreshRequested;
}