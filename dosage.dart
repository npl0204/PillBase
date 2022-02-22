import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const TextFieldScreen(),
    );
  }
}

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({Key? key}) : super(key: key);

  @override
  _TextFieldScreenState createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  final _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String dosage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(dosage),
            Container(
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _controller,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(197, 199, 204, 100)),
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(197, 199, 204, 100)),
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  hintText: 'Ex. 1',
                  hintStyle:
                      TextStyle(color: Color.fromRGBO(203, 207, 218, 100)),
                  labelText: 'Dosage',
                  labelStyle: TextStyle(
                      color: Color.fromRGBO(99, 107, 133, 100),
                      fontStyle: FontStyle.normal,
                      fontSize: 15),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  floatingLabelStyle:
                      TextStyle(color: Color.fromRGBO(99, 107, 133, 100)),
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                maxLength: 2,
                validator: (value) {
                  if (value!.isEmpty || value == "0") {
                    return 'Required';
                  } else {
                    return null;
                  }
                },
              ),
              padding: const EdgeInsets.all(32),
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                child: Text("verify"),
                //color: Color.fromARGB(255, 223, 110, 144),
                onPressed: () {
                  setState(() {
                    dosage = _controller.text;
                  });
                },
              ),
              padding: const EdgeInsets.all(32),
            )
          ]),
    );
  }
}
