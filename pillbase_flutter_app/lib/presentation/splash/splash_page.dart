import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pillbase_flutter_app/presentation/sign_in/sign_in_page.dart';
import '../../application/auth/bloc/auth_bloc.dart';
import '../main/main_page.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);
  static const routeName = '/splash-page';

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            Navigator.pushReplacementNamed(
              context,
              MainPage.routeName,
            );
          },
          unauthenticated: (_) {
            Navigator.pushReplacementNamed(
              context,
              SignInPage.routeName,
            );
          },
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
