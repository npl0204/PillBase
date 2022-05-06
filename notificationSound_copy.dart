import "package:flutter/material.dart";
import "package:awesome_notifications/awesome_notifications.dart";
//to get the is isEmailValid and isPasswordValid values
import 'sign_in_form_bloc.dart';


 void main() {
   AwesomeNotifications().initialize(
     '', 
     [
       NotificationChannel(
         channelDescription: 'Scheduled channel',
         channelName: 'Scheduled channel',
         channelKey: 'Scheduled channel',
         locked: true,
         importance: NotificationImportance.High,
       ),
     ],
   );
   runApp(MyApp());
 }
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const HomePage(),
    );
  }
}

 class HomePage extends StatefulWidget {
   const HomePage({Key? key}): super(key: key);

   @override 
   _HomePageState createState() =>
     _HomePageState();
 }

 class _HomePageState extends State<HomePage> {
  //getters
  get isEmailValid => null;

  get isPasswordValid => null;

  //MODIFIED added to import the class SignInFormBloc from file 
  //  sign_in_form_bloc.dart
  SignInFormBloc() {
    // TODO: implement SignInFormBloc
    throw UnimplementedError();
  }

   @override 
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         centerTitle: true,
         title: AppBarTitle(),
         actions: [
           IconButton(
             onPressed: () {
               Navigator.push(
                 context,
                 MaterialPageRoute(
                   builder: (_) => const HomePage(),
                 ),
               ); 
             },
             icon: const Icon(
               Icons.insert_chart_outlined_rounded,
               size: 30,
             ),
           )
         ],
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             const SizedBox(height: 25,
             ),
             HomePageButtons(
               // ignore: curly_braces_in_flow_control_structures
               onPressedOne: () async {
                 NotificationWeekandTime pickedSchedule = await pickSchedule(context);
                 //MODIFIED (pickedSchedule != null) deleted, now checks if user is logged in
                 // with correct email and password
                 if  (isEmailValid! && isPasswordValid! == true) {
                   createReminderNotification(pickedSchedule);
                 };
               },
               onPressedTwo: cancelScheduledNotifications,
             ),
           ],
         ),
       ),
     );
   } 
  
   @override
   void initState() {
     super.initState();
     AwesomeNotifications().isNotificationAllowed().then(
       (isAllowed) {
         if (!isAllowed) {
           showDialog(
             context: context,
             builder: (context) => AlertDialog(
               title: Text('Allow Notifications'),
               content: Text('Our app would like to send you notifications'),
               actions: [
                 TextButton(
                   onPressed: () {
                     Navigator.pop(context);
                   },
                   child: Text(
                     'Don\'t Allow',
                     style: TextStyle(color: Colors.grey, fontSize: 18),
                   ),
                 ),
                 TextButton(
                   onPressed: () => AwesomeNotifications()
                       .requestPermissionToSendNotifications()
                       .then((_) => Navigator.pop(context)),
                   child: Text(
                     'Allow',
                     style: TextStyle(
                       color: Colors.teal,
                       fontSize: 18,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                 ),
               ],
             ),
           );
         }
       },
     );
   }
 }

 class HomePageButtons extends StatelessWidget {
   final Future<void> Function() onPressedOne;
   final Future<void> Function() onPressedTwo;
   const HomePageButtons({
     Key? key,
     required this.onPressedOne,
     required this.onPressedTwo,
   }): super(key: key);
   @override
   Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.symmetric(horizontal: 20.0),
       child: Column(
         mainAxisSize: MainAxisSize.min,
         children: <Widget>[
           ElevatedButton(
             style: ButtonStyle(
               backgroundColor: MaterialStateProperty.resolveWith<Color>(
                 (Set<MaterialState> states) {
                   if (states.contains(MaterialState.pressed)) {
                     return Theme.of(context).colorScheme.primary.withOpacity(0.5);
                   }
                   return Colors.white; // Use the component's default.
                 },
              ),
             ),
             onPressed: () {},
             child: const Text('Set reminder'),
           ),
           const SizedBox(height: 30),
           ElevatedButton(
             style: ButtonStyle(
               backgroundColor: MaterialStateProperty.resolveWith<Color>(
                 (Set<MaterialState> states) {
                   if (states.contains(MaterialState.pressed)) {
                     return Theme.of(context).colorScheme.primary.withOpacity(0.5);
                   }
                   return Colors.white; // Use the component's default.
                 },
              ),
             ),
             onPressed: () {},
             child: const Text('Cancel'),
           ),
         ],
       ),
     );
   }
 }
 class AppBarTitle extends StatelessWidget {
   const AppBarTitle({Key? key}): super(key: key);

   @override 
   Widget build(BuildContext context) {
     return Row(
       mainAxisAlignment: MainAxisAlignment.center,
       mainAxisSize: MainAxisSize.min,
       children: [
        //FaIcon(
          //FontAwesomeIcons.seedling,
          //color: Colors.deepOrange[50],
        //),
         const Text('PillBase'),
       ],
     );
   }
 }

 class NotificationWeekandTime {
   final int dayOfTheWeek;
   final TimeOfDay timeOfDay;

   NotificationWeekandTime({
     required this.dayOfTheWeek,
     required this.timeOfDay,
   });
 }

 Future<NotificationWeekandTime> pickSchedule(
   BuildContext context,
 ) async {
   List<String> weekdays = [
     'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday',
   ];
   TimeOfDay timeOfDay;
   DateTime now = DateTime.now();
   int selectedDay;

   await showDialog(
     context: context,
     builder: (context) {
       return AlertDialog( 
         title: Text(
           'I want to be reminded every',
           textAlign: TextAlign.center,
         ),
         content: Wrap(
           alignment: WrapAlignment.center,
           spacing: 2,
           children: [
             for (int i = 0; i < weekdays.length; i ++)
               ElevatedButton(
                 onPressed: () {
                   selectedDay = i + 1;
                   Navigator.pop(context);
                 },
                 style: ButtonStyle(
                   backgroundColor: MaterialStateProperty.all( 
                     Colors.deepOrange[300],
                   ),
                 ),
                 child: Text(weekdays[i]),
               ),
           ],
         ),
       );
     },
   );
   throw Exception("Error on server");
 }

 class AppWidget extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         primaryColor: Colors.deepOrange[400],
         accentColor: Colors.deepOrange[100],
       ),
       title: 'PillBase',
       home: HomePage(),
     );
   }
 }

 // notification
 Future<void> createReminderNotification(NotificationWeekandTime notificationSchedule) async {
   await AwesomeNotifications().createNotification(
     //sound
     //final sound = 'notification_sound.wav'
     content: NotificationContent(
       id: 4,
       channelKey: 'Scheduled channel',
       title: 'Set reminder for your medicine!',
       body: 'Remember to take your medicines on time to keep you healthy.',
       notificationLayout: NotificationLayout.Default
     ),
     actionButtons: [
       NotificationActionButton(
         key: 'MARK_DONE',
         label: 'Mark as completed',
       ),
       NotificationActionButton(
         key: 'MARK_DONE',
         label: 'Remind in a hour',
       )
     ],
     schedule: NotificationCalendar(
       repeats: true,
       weekday: notificationSchedule.dayOfTheWeek,
       hour: notificationSchedule.timeOfDay.hour,
       minute: notificationSchedule.timeOfDay.minute,
       second: 0,
       millisecond: 0,
     ),
   );
 }

 Future<void> cancelScheduledNotifications() async {
   await AwesomeNotifications().cancelAllSchedules();
 }
