part of 'pill_form_bloc.dart';

@freezed
class PillFormEvent with _$PillFormEvent {
  const factory PillFormEvent.pillNameChanged(String pillName) = _PillNameChanged;
   const factory PillFormEvent.initialized(Option<Pill> initialPillOption) =
      _Initialized;
}