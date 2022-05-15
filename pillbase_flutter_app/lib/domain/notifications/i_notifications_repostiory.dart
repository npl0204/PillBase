import '../pills/pill.dart';

abstract class INotificationRepository {
  Future<List<int?>> create(Pill pill);
}
