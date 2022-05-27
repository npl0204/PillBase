part of 'calendar_bloc.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState.initial() = _Initial;
  const factory CalendarState.loadInProgress() = _LoadInProgress;
  const factory CalendarState.loadSuccess(List<Appointment> events) = _LoadSuccess;
  const factory CalendarState.loadFailure(PillFailure pillFailure) =
      _LoadFailure;
}
