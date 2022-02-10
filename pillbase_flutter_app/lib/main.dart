import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pillbase_flutter_app/presentation/pill_form/pill_form_page.dart';

import 'presentation/main/main_page.dart';
import 'injection.dart' as di;
import 'presentation/sign_in/sign_in_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
      routes: {
          PillFormPage.routeName: (ctx) => const PillFormPage(),
        },
    );
  }
}