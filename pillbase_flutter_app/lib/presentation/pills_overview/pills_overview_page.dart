import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pillbase_flutter_app/presentation/pills_overview/widgets/pills_overview_body.dart';
import '../../application/auth/bloc/auth_bloc.dart';
import '../../application/pills/pill_actor/pill_actor_bloc.dart';
import '../../application/pills/pill_watcher/pill_watcher_bloc.dart';
import '../pill_form/pill_form_page.dart';
import '../sign_in/sign_in_page.dart';
import 'package:provider/src/provider.dart';

import '../../../injection.dart';

class PillsOverviewPage extends StatelessWidget {
  const PillsOverviewPage({Key? key}) : super(key: key);
  static const routeName = '/pills-overview-page';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<PillWatcherBloc>()
            ..add(const PillWatcherEvent.watchAllStarted()),
        ),
        BlocProvider(create: (context) => sl<PillActorBloc>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(listener: (context, state) {
            state.maybeMap(
              unauthenticated: (_) => Navigator.of(context)
                  .pushReplacementNamed(SignInPage.routeName),
              orElse: () {},
            );
          }),
          BlocListener<PillActorBloc, PillActorState>(
              listener: (context, state) {
            state.maybeMap(
              deleteFailure: (state) {
                FlushbarHelper.createError(
                        duration: const Duration(seconds: 5),
                        message: state.pillFailure.map(
                            unexpected: (_) => 'Unexpected error occured',
                            insufficientPermission: (_) =>
                                'Insufficient permissions',
                            unableToUpdate: (_) => 'Impossible Error'))
                    .show(context);
              },
              orElse: () {},
            );
          })
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('PillBase'),
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
          body: const PillsOverviewBody(),
        ),
      ),
    );
  }
}
