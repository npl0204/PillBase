import 'package:awesome_notifications/awesome_notifications.dart';
import '../../domain/notifications/i_notification_repostiory.dart';

import '../../domain/pills/pill.dart';

class NotificationRepository implements INotificationRepository {
  @override
  Future<bool> checkIfAllowed() {
    return AwesomeNotifications().isNotificationAllowed();
  }

  @override
  Future<List<int?>> create(Pill pill) async {
    final daysOfWeek = pill.daysOfWeek;
    final timeOfDay = pill.timeOfDay;
    final frequency = daysOfWeek.getOrCrash().length;
    List<int?> notificationIds = [];
    for (var i = 0; i < frequency; i++) {
      final int notificationId =
          DateTime.now().millisecondsSinceEpoch.remainder(100000);
      await AwesomeNotifications().createNotification(
        content: NotificationContent(
          id: notificationId,
          groupKey: pill.id.getOrCrash(),
          channelKey: 'scheduled_channel',
          title: '${Emojis.medical_pill} ${pill.pillName.getOrCrash()}',
          body: 'It is time for you medication!',
          notificationLayout: NotificationLayout.Default,
        ),
        actionButtons: [
          NotificationActionButton(
            key: 'DONE',
            label: 'Done',
          ),
        ],
        schedule: NotificationCalendar(
          weekday: daysOfWeek.getOrCrash()[i],
          hour: timeOfDay.getOrCrash().hour,
          minute: timeOfDay.getOrCrash().minute,
          second: 0,
          millisecond: 0,
          repeats: true,
        ),
      );
      notificationIds.add(notificationId);
    }
    return notificationIds;
  }

  @override
  Future<List<int?>> update(Pill pill) async {
    cancelScheduledNotifications(pill.notificationIds);
    final notificationIds = await create(pill);
    return notificationIds;
  }

  @override
  Future<void> cancelScheduledNotifications(List<int?> notificationIds) async {
    final frequency = notificationIds.length;
    for (var i = 0; i < frequency; i++) {
      await AwesomeNotifications().cancel(notificationIds[i]!);
    }
  }

  @override
  Future<void> cancelAllNotifications() async {
      await AwesomeNotifications().cancelAll();
  }
}
