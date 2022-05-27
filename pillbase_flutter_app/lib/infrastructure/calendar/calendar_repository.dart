import '../../presentation/core/constants.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import '../../domain/calendar/i_calendar_repository.dart';

import '../../domain/pills/pill.dart';

class CalendarRepository implements ICalendarRepository {
  const CalendarRepository();

  @override
  List<Appointment> watchAll(List<Pill> pills) {
    List<Appointment> events = <Appointment>[];

    for (var i = 0; i < pills.length; i++) {
      final time = pills[i].timeOfDay.getOrCrash();

      String days = '';

      Map<int, String> daysConverter = {
        1: 'MO',
        2: 'TU',
        3: 'WE',
        4: 'TH',
        5: 'FR',
        6: 'SA',
        7: 'SU',
      };

      final daysList = pills[i]
          .daysOfWeek
          .getOrCrash()
          .map((day) => daysConverter[day] as String)
          .toList();

      for (var k = 0; k < daysList.length; k++) {
        days += daysList[k];
        if (k != daysList.length) {
          days += ', ';
        }
      }

      events.add(
        Appointment(
          endTime: time.add(
            const Duration(minutes: 50),
          ),
          startTime: time,
          subject: pills[i].pillName.getOrCrash(),
          recurrenceRule: 'FREQ=WEEKLY; BYDAY = $days',
          color: kPrimaryColor,
        ),
      );
    }
    return events;
  }
}
