part of 'pill_form_bloc.dart';

@freezed
class PillFormEvent with _$PillFormEvent {
  const factory PillFormEvent.pillNameChanged(String pillName) =
      _PillNameChanged;
  const factory PillFormEvent.initialized(Option<Pill> initialPillOption) =
      _Initialized;
  const factory PillFormEvent.saved() = _Saved;
  const factory PillFormEvent.pillNumberChanged(String pillNumber) =
      _PillNumberChanged;
  const factory PillFormEvent.pillUnitChanged(String pillUnit) =
      _PillUnitChanged;
  const factory PillFormEvent.timeChanged(DateTime timeOfDay) = _TimeChanged;
}
