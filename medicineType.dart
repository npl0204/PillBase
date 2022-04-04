import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'PillBase'),
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
  
  String? valueChoose;
  List listItem = [
    "Liquid", "Tablet", "Capsule", "Topical", "Drops", "Inhaler", "Injections", "Patches", "Suppositories"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child:Container(
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey, width: 2),
          ),
          child: DropdownButton(
            hint: const Text('Select'),
            dropdownColor: Colors.purple,
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 30,
            style: const TextStyle(
              fontSize: 20
            ),
            value: valueChoose,
            isExpanded: true,
            onChanged: (newValue) {
              setState(() {
              valueChoose = newValue as String;
              });
            },
            items: listItem.map((valueItem) {
            return DropdownMenuItem(
              value: valueItem,
              child: Text(valueItem),
              );
            }).toList(),
        ),
      ),
    ),
   );
  }
}