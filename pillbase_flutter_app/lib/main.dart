import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'application/pills/pill_worker/pill_worker_bloc.dart';
import 'injection.dart';
import 'presentation/core/app_widget.dart';
import 'injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await di.init();
  AwesomeNotifications().initialize(
    null,
    [
      NotificationChannel(
        channelKey: 'scheduled_channel',
        channelName: 'Scheduled Notifications',
        channelDescription: '',
        defaultColor: Colors.teal,
        locked: true,
        importance: NotificationImportance.High,
      ),
    ],
  );
  runApp(BlocProvider(
    create: (context) => sl<PillWorkerBloc>(),
    child: const AppWidget(),
  ));
}
