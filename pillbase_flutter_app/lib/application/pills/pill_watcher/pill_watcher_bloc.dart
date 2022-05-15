import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/notifications/i_notification_repostiory.dart';
import '../../../domain/pills/i_pill_repository.dart';
import '../../../domain/pills/pill.dart';
import '../../../domain/pills/pill_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pill_watcher_event.dart';
part 'pill_watcher_state.dart';
part 'pill_watcher_bloc.freezed.dart';

class PillWatcherBloc extends Bloc<PillWatcherEvent, PillWatcherState> {
  final IPillRepository pillRepository;
  final INotificationRepository notificationRepository;
  StreamSubscription<Either<PillFailure, List<Pill>>>? _pillStreamSubscription;

  PillWatcherBloc({
    required this.pillRepository,
    required this.notificationRepository,
  }) : super(const PillWatcherState.initial()) {
    on<PillWatcherEvent>(
      (event, emit) async {
        await event.map(
          watchAllStarted: (e) async {
            emit(
              const PillWatcherState.loadInProgress(),
            );
            _pillStreamSubscription?.cancel();
            _pillStreamSubscription =
                pillRepository.watchAll().listen((failureOrPill) {
              add(
                $PillWatcherEvent.pillsReceived(failureOrPill),
              );
            });
          },
          pillsReceived: (e) async {
            e.failureOrPills.fold(
              (f) => emit(PillWatcherState.loadFailure(f)),
              (pills) {
                emit(
                  PillWatcherState.loadSuccess(pills),
                );
                for (var i = 0; i < pills.length; i++) {
                  notificationRepository.create(pills[i]);
                }
              },
            );
          },
        );
      },
    );
  }
}
