part of 'pill_watcher_bloc.dart';

@freezed
class PillWatcherEvent with _$PillWatcherEvent {
  const factory PillWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory PillWatcherEvent.pillsReceived(
      Either<PillFailure, List<Pill>> failureOrPills) = _PillsReceived;
}
