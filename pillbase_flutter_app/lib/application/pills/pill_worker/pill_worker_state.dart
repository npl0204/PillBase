part of 'pill_worker_bloc.dart';

@freezed
class PillWorkerState with _$PillWorkerState {
  const factory PillWorkerState({
    Pill? pill,
    required bool isSaving,
    required Option<Either<PillFailure, Unit>> saveFailureOrSuccessOption,
    required bool showErrorMessage,
  }) = _PillWorkerState;

  factory PillWorkerState.initial() => PillWorkerState(
        pill: null,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
        showErrorMessage: false,
      );
}
