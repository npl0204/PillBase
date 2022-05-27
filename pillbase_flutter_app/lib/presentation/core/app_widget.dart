import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pill_app/presentation/calendar/calendar_page.dart';
import '../../application/auth/bloc/auth_bloc.dart';
import '../../application/notifications/notifications_bloc.dart';
import '../../application/pills/pill_worker/pill_worker_bloc.dart';
import '../../domain/core/value_objects.dart';
import '../dictionary/dictionary/dictionary_page.dart';
import '../dictionary/entry/entry_page.dart';
import 'theme.dart';
import '../home/home_page.dart';
import '../patient/pill_form/pill_form_page.dart';
import '../patient/pill_overview/pill_overview_page.dart';
import '../patient/pills_overview/pills_overview_page.dart';

import '../../injection.dart';
import '../sign_in/sign_in_page.dart';
import '../splash/splash_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  void initState() {
    super.initState();

    final checkId = UniqueId().getOrCrash();
    String? groupKey;
    String? dateTime;

    AwesomeNotifications().displayedStream.listen((notification) {
      groupKey = notification.groupKey;
      dateTime = DateTime.now().toIso8601String();

      context.read<PillWorkerBloc>().add(PillWorkerEvent.createdUpdated(
            pillId: groupKey as String,
            dateTime: dateTime as String,
            check: false,
            checkId: checkId,
          ));
    });

    AwesomeNotifications().actionStream.listen((notification) {
      if (notification.buttonKeyPressed == 'DONE') {
        context.read<PillWorkerBloc>().add(
              PillWorkerEvent.createdUpdated(
                pillId: groupKey as String,
                dateTime: dateTime as String,
                check: true,
                checkId: checkId,
              ),
            );
      }

    });
  }

  @override
  void dispose() {
    AwesomeNotifications().actionSink.close();
    AwesomeNotifications().displayedSink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<AuthBloc>()
            ..add(
              const AuthEvent.authCheckRequested(),
            ),
        ),
        BlocProvider(
          create: (context) => sl<NotificationsBloc>()
            ..add(
              const NotificationsEvent.notificationPermissionCheckRequested(),
            ),
        )
      ],
      child: MaterialApp(
        title: 'Pills',
        debugShowCheckedModeBanner: false,
        theme: lightThemeData(context),
        home: const SplashPage(),
        routes: {
          SplashPage.routeName: (ctx) => const SplashPage(),
          SignInPage.routeName: (ctx) => const SignInPage(),
          PillsOverviewPage.routeName: (ctx) => const PillsOverviewPage(),
          PillFormPage.routeName: (ctx) => const PillFormPage(),
          HomePage.routeName: (ctx) => const HomePage(),
          PillOverviewPage.routeName: (ctx) => const PillOverviewPage(),
          DictionaryPage.routeName: (ctx) => const DictionaryPage(),
          CalendarPage.routeName: (ctx) => const CalendarPage(),
          EntryPage.routeName:(ctx) => const EntryPage(),
        },
      ),
    );
  }
}
