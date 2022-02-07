import 'package:flutter/material.dart';
import 'package:pillbase_flutter_app/presentation/pill_form/pill_form_page.dart';

class MainPage extends StatefulWidget {
  static const routeName = 'reminders-page';

  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: PillFormPage(),
      );
  }
}
