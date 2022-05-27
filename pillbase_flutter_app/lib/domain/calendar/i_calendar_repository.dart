import 'calendar_data_source.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../pills/pill.dart';

abstract class ICalendarRepository {
  List<Appointment> watchAll(List<Pill> pills);
}
