import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/notifications/i_notification_repostiory.dart';

part 'notifications_bloc.freezed.dart';
part 'notifications_event.dart';
part 'notifications_state.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  INotificationRepository notificationRepository;

  NotificationsBloc({required this.notificationRepository})
      : super(const NotificationsState.initial()) {
    on<NotificationsEvent>(
      (event, emit) async {
        await event.map(
          notificationPermissionCheckRequested: (e) async {
            if (await notificationRepository.checkIfAllowed()) {
              emit(const NotificationsState.alertDialogNotDisplayed());
            } else {
              emit(const NotificationsState.alertDialogDisplayed());
            }
          },
        );
      },
    );
  }
}
