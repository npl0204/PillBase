import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/calendar_body_widget.dart';

import '../../../application/calendar/calendar_bloc.dart';
import '../../../injection.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);
  static const routeName = '/calendar-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: BlocProvider(
        create: (context) =>
            sl<CalendarBloc>()..add(const CalendarEvent.watchAllStarted()),
        child: const CalendarBody(),
      ),
    );
  }
}
