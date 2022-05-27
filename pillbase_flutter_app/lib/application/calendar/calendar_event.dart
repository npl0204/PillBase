part of 'calendar_bloc.dart';

@freezed
class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent.watchAllStarted() = _WatchAllStarted;
  const factory CalendarEvent.pillsReceived(
      Either<PillFailure, List<Pill>> failureOrPills) = _CalendarReceived;
}
