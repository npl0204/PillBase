import '../pills/pill.dart';

abstract class INotificationRepository {
  Future<bool> checkIfAllowed();
  Future<List<int?>> create(Pill pill);
  Future<List<int?>> update(Pill pill);
  Future<void> cancelScheduledNotifications(List<int?> notificationIds);
  Future<void> cancelAllNotifications();
}
