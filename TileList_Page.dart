import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Med {
  static var medicines = [
    'Medicine #1',
    'Medicine #2',
    'Medicine #3',
    'Medicine #4',
    'Medicine #5',
    'Medicine #6'
  ];
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reminders',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Today'),
    );
  }
}

class Medicine {}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final medicines = [
    'Medicine #1',
    'Medicine #2',
    'Medicine #3',
    'Medicine #4',
    'Medicine #5',
    'Medicine #6'
  ];

  final dose = [
    '1 Tablet',
    '2 Tablet',
    '1 Tablet',
    '3 Tablet',
    '2 Tablet',
    '1 Tablet'
  ];

  final time = ['7:00PM', '8:00AM', '7:30PM', '10:00AM', '8:00PM', '8:00PM'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 232, 101, 58),
        title: Text(widget.title),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: medicines.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                tileColor: const Color.fromARGB(255, 244, 246, 245),
                contentPadding: const EdgeInsets.symmetric(horizontal: 5.0),
                title: Text(medicines[index]),
                subtitle: Text(dose[index]),
                trailing: Text(time[index]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(medicines[index]),
                    ),
                  );
                },
              ),
            );
          }),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen(String medicine, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Reminder #"),
        ),
        body: RichText(
          text: const TextSpan(
            //text: "Medicine Name",
            style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 18,
                height: 2,
                fontWeight: FontWeight.bold),

            children: <TextSpan>[
              TextSpan(text: "Medicine Name"),
              TextSpan(
                  text: "\n# Tablets",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                      height: 1.5,
                      fontWeight: FontWeight.normal)),
              TextSpan(
                  text: "\n 7:00PM",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                      height: 1.5,
                      fontWeight: FontWeight.normal)),
              TextSpan(
                  text: "\n Created 4/12/22 at 4:45PM",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 14,
                      height: 49,
                      fontWeight: FontWeight.normal))
            ],
          ),
        ));
  }
}
