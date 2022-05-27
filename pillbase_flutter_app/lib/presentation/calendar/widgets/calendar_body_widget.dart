import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../domain/calendar/calendar_data_source.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../../application/calendar/calendar_bloc.dart';

class CalendarBody extends StatefulWidget {
  const CalendarBody({
    Key? key,
  }) : super(key: key);

  @override
  State<CalendarBody> createState() => _CalendarBodyState();
}

class _CalendarBodyState extends State<CalendarBody> {

  final CalendarController _controller = CalendarController();

  void calendarTapped(CalendarTapDetails calendarTapDetails) {
    if (_controller.view == CalendarView.month &&
        calendarTapDetails.targetElement == CalendarElement.calendarCell) {
      _controller.view = CalendarView.day;
    } else if (_controller.view == CalendarView.week &&
        calendarTapDetails.targetElement == CalendarElement.viewHeader) {
      _controller.view = CalendarView.day;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<CalendarBloc, CalendarState>(
      builder: (context, state) => state.maybeMap(
        orElse: () => const Center(
            child: CircularProgressIndicator(backgroundColor: Colors.white)),
        loadSuccess: (e) {
          List<Appointment> source = e.events;
          return Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiary,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SfCalendar(
                view: CalendarView.week,
                allowedViews: const [
                  CalendarView.day,
                  CalendarView.week,
                  CalendarView.month,
                ],
                controller: _controller,
                onTap: calendarTapped,
                monthViewSettings: const MonthViewSettings(
                  appointmentDisplayMode:
                      MonthAppointmentDisplayMode.appointment,
                  navigationDirection: MonthNavigationDirection.vertical,
                ),
                firstDayOfWeek: 1,
                initialSelectedDate: DateTime.now(),
                headerHeight: 50,
                headerStyle:
                    const CalendarHeaderStyle(textAlign: TextAlign.center),
                dataSource: MeetingDataSource(source),
              ),
            ),
          );
        },
      ),
    );
  }
}
