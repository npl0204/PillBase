import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'presentation/core/app_widget.dart';
import 'presentation/pill_form/pill_form_page.dart';

import 'injection.dart' as di;
import 'presentation/sign_in/sign_in_page.dart';

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
  runApp(const AppWidget());
}
