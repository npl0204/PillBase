import 'package: rxdart/rxdart.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:flutter_native_timezone/flutter_native_timeone.dart';

//notification
class NotificationApp {
  static final _notifications = FlutterLocalNotificationPlugin();
  static final onNotifications = BehaviorSubject<String?>();

  static Future _notificationDetails() async{
    
    //sound
    //Download: https://samplefocus.com/samples/alert-sound-fx-announcement-pulse
    final sound = 'notification_sound.wav';
    //need to add the sound as a new file called raw in the folder android/app/src/main/res in the project
    //need to configure folder los open it with xcode -> create a new file in runner called resources and add the sound

    return NotificationDetails(
      android: AndroidNotificationDetails(
        'chanel id 6'
        'chanel name'
        'channel description'
        importance: Importance.max,

        //sound
        //playSound: false,
        sound: RawResourceAndroidNotificationSound(sound.split('.').first),
        enableVibration: false,

        styleInformation: styleInformation,
      ),
      iOS: IOSNotificationDetails(
        //sound
        //presentSound: false,
        sound: sound,
      ),
    );
  }

  static Future init({bool initScheduled = false}) async {
    final android = AndroidInitializationSettings('@mipap/ic_launcher');
    final iOS = IOSINitializationSettings();
    final settings = InitializationSettings(android: android, iOS: iOS);

    await _notifications.initialize(
      settings,
      onSelectNotification: (payload) async {
        onNotifications.add(payload);
      }
    );

    if (initScheduled){
      tz.initializeTimeZones();
      final locationName = await FlutterNativeTimezone.getLocalTimezone();
      tz.setLocalLocation(tz.getLocation(locationName));
    }
  }

  static Future showNotification({
    int id = 0,
    String? title,
    String? body,
    String? payload,
  }) async =>
      _notifications.show(
        id,
        title,
        body,
        await _notificationDetails(),
        payload: payload,
      );
  static void showScheduledNotification({
    int id = 0,
    String? title,
    String? body,
    String? payload,
  })
}