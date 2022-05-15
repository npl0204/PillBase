import 'package:awesome_notifications/awesome_notifications.dart';

import '../../domain/notifications/i_notifications_repostiory.dart';
import '../../domain/pills/pill.dart';

class NotificationRepository implements INotificationRepository {
  @override
  Future<List<int?>> create(Pill pill) async {
    final timeOfDay = pill.timeOfDay;
    List<int?> notificationIds = [];
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
        weekday: 5,
        hour: timeOfDay.getOrCrash().hour,
        minute: timeOfDay.getOrCrash().minute,
        second: 0,
        millisecond: 0,
        repeats: true,
      ),
    );
    notificationIds.add(notificationId);
    return notificationIds;
  }
}
