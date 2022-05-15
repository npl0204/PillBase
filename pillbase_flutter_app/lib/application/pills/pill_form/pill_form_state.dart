part of 'pill_form_bloc.dart';

@freezed
class PillFormState with _$PillFormState {
  const factory PillFormState({
    required Pill pill,
    required bool showErrorMessage,
    required bool isSaving,
    required bool isEditing,
    required Option<Either<PillFailure, Unit>> saveFailureOrSuccessOption,
  }) = _PillFormState;

  factory PillFormState.initial() => PillFormState(
        pill: Pill.empty(),
        showErrorMessage: false,
        isSaving: false,
        isEditing: false,
        saveFailureOrSuccessOption: none(),
      );
}
