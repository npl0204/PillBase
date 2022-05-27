import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'pill_card.dart';
import '../../../../application/pills/pill_watcher/pill_watcher_bloc.dart';

class PillsOverviewBody extends StatelessWidget {
  const PillsOverviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<PillWatcherBloc, PillWatcherState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) =>
                const Center(child: CircularProgressIndicator()),
            loadSuccess: (state) {
              return Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.tertiary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: size.height * 0.07, bottom: size.height * 0.04),
                      child: const Text('Your Reminders',
                          style: TextStyle(fontSize: 30)),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          final pill = state.pills[index];
                          if (pill.failureOption.isSome()) {
                            return PillCard(pill: pill);
                          } else {
                            return PillCard(pill: pill);
                          }
                        },
                        itemCount: state.pills.length,
                      ),
                    ),
                  ],
                ),
              );
            },
            loadFailure: (state) {
              return Container();
            }
            );
      },
    );
  }
}
