import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pillbase_flutter_app/application/auth/bloc/auth_bloc.dart';
import 'package:pillbase_flutter_app/presentation/pill_form/pill_form_page.dart';
import 'package:pillbase_flutter_app/presentation/sign_in/sign_in_page.dart';
import 'package:provider/src/provider.dart';

import '../../../injection.dart';

class PillsOverviewPage extends StatelessWidget {
  const PillsOverviewPage({Key? key}) : super(key: key);
  static const routeName = '/pills-overview-page';

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(listener: (context, state) {
          state.maybeMap(
            unauthenticated: (_) => Navigator.of(context)
                .pushReplacementNamed(SignInPage.routeName),
            orElse: () {},
          );
        }),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
          leading: IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              context.read<AuthBloc>().add(
                    const AuthEvent.signedOut(),
                  );
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () =>
                  Navigator.of(context).pushNamed(PillFormPage.routeName),
            ),
          ],
        ),
        body: Container(),
      ),
    );
  }
}
