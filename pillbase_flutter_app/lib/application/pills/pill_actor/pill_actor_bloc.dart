import 'package:bloc/bloc.dart';
import '../../../domain/notifications/i_notification_repostiory.dart';
import '../../../domain/pills/i_pill_repository.dart';
import '../../../domain/pills/pill.dart';
import '../../../domain/pills/pill_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pill_actor_event.dart';
part 'pill_actor_state.dart';
part 'pill_actor_bloc.freezed.dart';

class PillActorBloc extends Bloc<PillActorEvent, PillActorState> {
  final IPillRepository pillRepository;
  final INotificationRepository notificationRepository;

  PillActorBloc({
    required this.pillRepository,
    required this.notificationRepository,
  }) : super(const PillActorState.initial()) {
    on<PillActorEvent>((event, emit) async {
      await event.map(deleted: (e) async {
        emit(const PillActorState.actionInProgress());
        final notificationIds = e.pill.notificationIds;
        final possibleFailure = await pillRepository.delete(e.pill);
        possibleFailure.fold((f) => emit(PillActorState.deleteFailure(f)), (r) {
          notificationRepository.cancelScheduledNotifications(notificationIds);
          emit(
            const PillActorState.deleteSuccess(),
          );
        });
      });
    });
  }
}
