part of 'pill_form_bloc.dart';

@freezed
class PillFormState with _$PillFormState {
  const factory PillFormState({
    required Pill pill,
    required bool isSaving,
    required bool showErrorMessage,
    required bool isEditing,
    required Option<Either<PillFailure, Unit>> saveFailureOrSuccessOption,
  }) = _PillFormState;

  factory PillFormState.initial() => PillFormState(
        pill: Pill.empty(),
        isSaving: false,
        showErrorMessage: false,
        isEditing: false,
        saveFailureOrSuccessOption: none(),
      );
}
