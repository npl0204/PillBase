import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/notifications/i_notification_repostiory.dart';
import '../../../domain/pills/i_pill_repository.dart';
import '../../../domain/pills/pill.dart';
import '../../../domain/pills/pill_failure.dart';
import '../../../domain/pills/value_objects.dart';

part 'pill_form_bloc.freezed.dart';
part 'pill_form_event.dart';
part 'pill_form_state.dart';

class PillFormBloc extends Bloc<PillFormEvent, PillFormState> {
  final IPillRepository pillRepository;
  final INotificationRepository notificationRepository;

  PillFormBloc({
    required this.pillRepository,
    required this.notificationRepository,
  }) : super(PillFormState.initial()) {
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
        dayOfWeekChanged: (e) { 
          emit(
            state.copyWith(
              pill: state.pill.copyWith(
                daysOfWeek: PillNotificationDaysOfWeek(e.daysOfWeek),
                daysOfWeekBool: e.daysOfWeekBool,
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
        saved: (e) async {
          Either<PillFailure, Unit>? failureOrSuccess;
          emit(state.copyWith(
            isSaving: true,
            saveFailureOrSuccessOption: none(),
          ));

          if (state.pill.failureOption.isNone()) {
            emit(
              state.copyWith(
                pill: state.pill.copyWith(
                  notificationIds: state.isEditing
                      ? await notificationRepository.update(state.pill)
                      : await notificationRepository.create(state.pill),
                ),
              ),
            );
            failureOrSuccess = state.isEditing
                ? await pillRepository.update(state.pill)
                : await pillRepository.create(state.pill);
          }

          emit(
            state.copyWith(
              isSaving: false,
              saveFailureOrSuccessOption: optionOf(failureOrSuccess),
              showErrorMessage: true,
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
      );
    });
  }
}
