part of 'pill_form_bloc.dart';

@freezed
class PillFormEvent with _$PillFormEvent {
  const factory PillFormEvent.pillNameChanged(String pillName) =
      _PillNameChanged;
  const factory PillFormEvent.pillNumberChanged(String pillNumber) =
      _PillNumberChanged;
  const factory PillFormEvent.pillUnitChanged(String pillUnit) =
      _PillUnitChanged;
  // const factory PillFormEvent.dayOfWeekBoolChanged(List<bool> daysOfWeekBool) =
  //     _DaysOfWeekBoolChanged;
  const factory PillFormEvent.dayOfWeekChanged(List<int> daysOfWeek, List<bool> daysOfWeekBool) =
      _DaysOfWeekChanged;
  const factory PillFormEvent.timeChanged(DateTime timeOfDay) = _TimeChanged;
  const factory PillFormEvent.saved() = _Saved;
  const factory PillFormEvent.initialized(Option<Pill> initialPillOption) =
      _Initialized;
}
