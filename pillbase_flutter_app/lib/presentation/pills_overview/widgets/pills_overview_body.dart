import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'pill_card.dart';
import '../../../../application/pills/pill_watcher/pill_watcher_bloc.dart';
// import 'package:flutter_notes_firebase_ddd/presentation/pills/pills_overview/widgets/error_note_card_widget.dart';

// import 'critical_failure_display_widget.dart';
// import 'note_card_widget.dart';

class PillsOverviewBody extends StatelessWidget {
  const PillsOverviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<PillWatcherBloc, PillWatcherState>(
      builder: (context, state) => state.map(
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
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        final pill = state.pills[index];
                        if (pill.failureOption.isSome()) {
                          return PillCard(pill: pill);
                          //TODO: correct this
                          // return ErrorNoteCard(pill: pill);
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
          // => CriticalFailureDisplay(
          //   failure: state.pillFailure,
          // ),
          ),
    );
  }
}
