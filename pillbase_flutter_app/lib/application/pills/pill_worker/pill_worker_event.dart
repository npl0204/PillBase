part of 'pill_worker_bloc.dart';

@freezed
class PillWorkerEvent with _$PillWorkerEvent {
  // const factory PillWorkerEvent.opened(Pill pill) = _Started;
  // const factory PillWorkerEvent.closed() = _Closed;
  const factory PillWorkerEvent.initialized(Pill pill) = _Initialized;
  const factory PillWorkerEvent.createdUpdated({
    required String pillId,
    required String dateTime,
    required bool check,
    required String checkId,
  }) = _CreatedUpdated;
  const factory PillWorkerEvent.changed(
      List<PillCheckItem> pillCheckItemsList) = _Changed;
}
