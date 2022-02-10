import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pillbase_flutter_app/domain/pills/pill.dart';
import 'package:pillbase_flutter_app/domain/pills/pill_failure.dart';
import 'package:pillbase_flutter_app/domain/pills/value_objects.dart';

part 'pill_form_event.dart';
part 'pill_form_state.dart';
part 'pill_form_bloc.freezed.dart';

class PillFormBloc extends Bloc<PillFormEvent, PillFormState> {
  PillFormBloc() : super(PillFormState.initial()) {
    on<PillFormEvent>((event, emit) async {
      await event.map(
        pillNameChanged: (e) async {
          emit(
            state.copyWith(
              pill: state.pill.copyWith(
                pillName: PillName(e.pillName),
              ),
              saveFailureOrSuccessOption: none(),
            ),
          );
        },
        initialized: (e) async {
          emit(
            e.initialPillOption.fold(
              () => state,
              (initialPill) => state.copyWith(
                pill: initialPill,
                isEditing: true,
              ),
            ),
          );
        },
        saved: (e) {
          Either<PillFailure, Unit>? failureOrSuccess;

          emit(state.copyWith(
            isSaving: true,
            saveFailureOrSuccessOption: none(),
          ));

          failureOrSuccess = left(const PillFailure.insufficientPermission());

          emit(
            state.copyWith(
              isSaving: false,
              saveFailureOrSuccessOption: optionOf(failureOrSuccess),
              showErrorMessage: true,
            ),
          );
        },
      );
    });
  }
}
