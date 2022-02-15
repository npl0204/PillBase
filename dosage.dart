import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<MyApp> {
  TextEditingController dosageController = TextEditingController();
  // ignore: non_constant_identifier_names
  String Dosage = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Dosage'),
          ),
          body: Center(
              child: Column(children: <Widget>[
            Container(
                margin: const EdgeInsets.all(20),
                child: TextField(
                  controller: dosageController,
                  decoration: const InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Dosage',
                    hintText: "Ex. 1",
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 2,
                  onChanged: (text) {
                    setState(() {
                      Dosage = text;
                      //you can access nameController in its scope to get
                      // the value of text entered as shown below
                      //UserName = nameController.text;
                    });
                  },
                )),
          ]))),
    );
  }
}
