import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pillbase_flutter_app/presentation/core/theme.dart';
import '../../application/auth/bloc/auth_bloc.dart';
import '../../domain/core/value_objects.dart';
import '../main/main_page.dart';
import '../pill_form/pill_form_page.dart';
import '../pills_overview/pills_overview_page.dart';

import '../../injection.dart';
import '../sign_in/sign_in_page.dart';
import '../splash/splash_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<AuthBloc>()
            ..add(
              const AuthEvent.authCheckRequested(),
            ),
        ),
      ],
      child: MaterialApp(
        title: 'Pills',
        debugShowCheckedModeBanner: false,
        theme: lightThemeData(context),
        home: const SplashPage(),
        routes: {
          SignInPage.routeName: (ctx) => const SignInPage(),
          PillFormPage.routeName: (ctx) => const PillFormPage(),
          PillsOverviewPage.routeName: (ctx) => const PillsOverviewPage(),
          MainPage.routeName: (ctx) => const MainPage(),
        },
      ),
    );
  }
}
