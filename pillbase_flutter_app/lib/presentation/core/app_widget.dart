import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pillbase_flutter_app/application/auth/bloc/auth_bloc.dart';
import 'package:pillbase_flutter_app/presentation/pill_form/pill_form_page.dart';

import '../../injection.dart';
import '../sign_in/sign_in_page.dart';
import '../splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

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
        theme: ThemeData.light().copyWith(
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.blue[900],
          ),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0XFF887BB0),
            secondary: Colors.blueAccent,
          ),
        ),
        home: const SplashPage(),
        routes: {
          SignInPage.routeName: (ctx) => const SignInPage(),
          PillFormPage.routeName: (ctx) => const PillFormPage(),
        },
      ),
    );
  }
}
