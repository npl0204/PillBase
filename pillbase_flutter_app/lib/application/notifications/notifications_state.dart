part of 'notifications_bloc.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState.initial() = _Initial;
  const factory NotificationsState.alertDialogDisplayed() = _AlertDialogDisplayed;
  const factory NotificationsState.alertDialogNotDisplayed() = _AlertDialogNotDisplayed;



  // const factory NotificationsState({
  //   required bool isAlertDialogDisplayed,
  //   required bool isNotificationAllowed,
  // }) = _NotificationsState;

  // factory NotificationsState.initial() => const NotificationsState(
  //       isAlertDialogDisplayed: false,
  //       isNotificationAllowed: false,
  //     );
}
