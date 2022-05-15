import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'widgets/sign_in_form_widget.dart';

import '../../injection.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);
  static const routeName = '/sign-in-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
          create: (_) => sl<SignInFormBloc>(),
          child: const SignInForm(),
        ));
  }
}
