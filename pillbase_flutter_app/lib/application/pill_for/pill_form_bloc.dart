import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pillbase_flutter_app/domain/pills/i_pill_repository.dart';
import '../../domain/pills/pill.dart';
import '../../domain/pills/pill_failure.dart';
import '../../domain/pills/value_objects.dart';

part 'pill_form_event.dart';
part 'pill_form_state.dart';
part 'pill_form_bloc.freezed.dart';

class PillFormBloc extends Bloc<PillFormEvent, PillFormState> {
  final IPillRepository pillRepository;

  PillFormBloc({required this.pillRepository})
      : super(PillFormState.initial()) {
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
        pillNumberChanged: (e) async {
          emit(
            state.copyWith(
              pill: state.pill.copyWith(
                pillNumber: PillNumber(e.pillNumber),
              ),
              saveFailureOrSuccessOption: none(),
            ),
          );
        },
        pillUnitChanged: (e) async {
          emit(
            state.copyWith(
              pill: state.pill.copyWith(
                pillUnit: PillUnit(e.pillUnit),
              ),
              saveFailureOrSuccessOption: none(),
            ),
          );
        },
        timeChanged: (e) async {
          emit(
            state.copyWith(
              pill: state.pill.copyWith(
                timeOfDay: PillNotificationTimeOfDay(e.timeOfDay),
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
        saved: (e) async {
          Either<PillFailure, Unit>? failureOrSuccess;

          emit(state.copyWith(
            isSaving: true,
            saveFailureOrSuccessOption: none(),
          ));

          if (state.pill.failureOption.isNone()) {
            failureOrSuccess = await pillRepository.create(state.pill);
          }

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
