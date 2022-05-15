import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/bloc/auth_bloc.dart';
import '../sign_in/sign_in_page.dart';
import 'widgets/background_widget.dart';
import 'widgets/menu_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routeName = '/home-page';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<HomePage> {
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
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Stack(
          children: [
            const Background(),
            const MenuCard(),
            Positioned(
              left: 8,
              top: 25,
              child: IconButton(
                icon: const Icon(Icons.exit_to_app),
                color: Theme.of(context).scaffoldBackgroundColor,
                onPressed: () {
                  context.read<AuthBloc>().add(
                        const AuthEvent.signedOut(),
                      );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
