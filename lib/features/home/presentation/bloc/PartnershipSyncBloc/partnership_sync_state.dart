part of 'partnership_sync_bloc.dart';

@freezed
class PartnershipSyncState with _$PartnershipSyncState {
  const factory PartnershipSyncState.initial() = _Initial;
  const factory PartnershipSyncState.loading() = _Loading;
  const factory PartnershipSyncState.success({
    required double myProgress,
    required double partnerProgress,
    required String partnerName,
  }) = _Success;
  const factory PartnershipSyncState.failure(String errorMessage) = _Failure;
}