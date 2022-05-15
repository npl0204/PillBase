part of 'pill_watcher_bloc.dart';

@freezed
class PillWatcherState with _$PillWatcherState {
  const factory PillWatcherState.initial() = _Initial;
  const factory PillWatcherState.loadInProgress() = _LoadInProgress;
  const factory PillWatcherState.loadSuccess(List<Pill> pills) = _LoadSuccess;
  const factory PillWatcherState.loadFailure(PillFailure pillFailure) =
      _LoadFailure;
}
