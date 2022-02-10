import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pillbase_flutter_app/application/auth/bloc/sign_in_form_bloc.dart';
import 'package:pillbase_flutter_app/presentation/pill_form/pill_form_page.dart';

import '../../injection.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);
  static const routeName = '/sign-in-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: BlocProvider(
        create: (_) => sl<SignInFormBloc>(),
        child: TextButton(
          onPressed: () {
            context.read<SignInFormBloc>().add(
                  const SignInFormEvent.registerWithEmailAndPasswordPressed(),
                );
            Navigator.of(context).pushNamed(PillFormPage.routeName);
          },
          child: const Text('LET ME IN'),
        ),
      ),
    );
  }
}
