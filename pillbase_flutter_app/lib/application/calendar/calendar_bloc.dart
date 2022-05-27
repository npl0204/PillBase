import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../domain/calendar/calendar_data_source.dart';
import '../../domain/calendar/i_calendar_repository.dart';
import '../../domain/pills/i_pill_repository.dart';
import '../../domain/pills/pill.dart';
import '../../domain/pills/pill_failure.dart';
import 'dart:async';

part 'calendar_event.dart';
part 'calendar_state.dart';
part 'calendar_bloc.freezed.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  final ICalendarRepository calendarRepository;
  final IPillRepository pillRepository;
  StreamSubscription<Either<PillFailure, List<Pill>>>? _pillStreamSubscription;

  CalendarBloc({
    required this.calendarRepository,
    required this.pillRepository,
  }) : super(const CalendarState.initial()) {
    on<CalendarEvent>((event, emit) {
      event.map(
        watchAllStarted: (e) async {
          emit(
            const CalendarState.loadInProgress(),
          );
          _pillStreamSubscription?.cancel();
          _pillStreamSubscription =
              pillRepository.watchAll().listen((failureOrPill) {
            add(
              $CalendarEvent.pillsReceived(failureOrPill),
            );
          });
        },
        pillsReceived: (e) {
          e.failureOrPills.fold((f) => emit(CalendarState.loadFailure(f)),
              (pills) {
            final events = calendarRepository.watchAll(pills);
            emit(
              CalendarState.loadSuccess(events),
            );
          });
        },
      );
    });
  }
}
