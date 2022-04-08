import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          channelKey: 'key1',
          channelName: 'Test Notification',
          channelDescription: "Test Notification",
          defaultColor: Color(0XFFA04000),
          ledColor: Colors.white,
          playSound: true,
          enableLights:true,
          enableVibration: true
        )
      ]
  );
  runApp(MyApp());
}

class NavigationPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("This is Navigation Page", style: TextStyle(fontSize: 25),),
      )
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       routes: {
         '/navigationPage' :(context)=>NavigationPage()
       },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Notify();  //localnotification method call below

                   // when user top on notification this listener will work and user will be navigated to notification page
                AwesomeNotifications().actionStream.listen((receivedNotifiction){
                  Navigator.of(context).pushNamed(
                    '/navigationPage',
                  );
                });
              },
              child: Text("Test PillBase Local Notification"),

            ),
          ],
        ),
      ),
    );
  }


}


void Notify()  async{
  String timezom = await AwesomeNotifications().getLocalTimeZoneIdentifier();

 await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 1,
        channelKey: 'key1',
        title: 'PillBase Notification',
        body: 'Have your taken your medicines today?',
        bigPicture: 'https://creakyjoints.org//wp-content/uploads/2018/10/0918_Medication-Reminder.jpg',
        notificationLayout: NotificationLayout.BigPicture
      ),
   schedule: NotificationInterval(interval: 2,timeZone: timezom,repeats: true),
  );


}