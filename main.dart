import 'package:flutter/material.dart';

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
    'Medicine #5'
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
        backgroundColor: Color.fromARGB(255, 232, 101, 58),
        title: Text(widget.title),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: medicines.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                tileColor: Color.fromARGB(255, 244, 246, 245),
                contentPadding: EdgeInsets.symmetric(horizontal: 5.0),
                onTap: () {},
                title: Text(medicines[index]),
                subtitle: Text(dose[index]),
                trailing: Text(time[index]),
              ),
            );
          }),
      //floatingActionButton: FloatingActionButton(
      //onPressed: _incrementCounter,
      //tooltip: 'Increment',
      //child: const Icon(Icons.add),
      //), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
