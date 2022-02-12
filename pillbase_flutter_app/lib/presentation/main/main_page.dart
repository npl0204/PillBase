import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pillbase_flutter_app/application/auth/bloc/sign_in_form_bloc.dart';
import 'package:pillbase_flutter_app/presentation/sign_in/sign_in_page.dart';

import '../../injection.dart';

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
    return BlocProvider(
      create: (context) => sl<SignInFormBloc>(),
      child: const Scaffold(
        body: SignInPage(),
      ),
    );
  }
}
