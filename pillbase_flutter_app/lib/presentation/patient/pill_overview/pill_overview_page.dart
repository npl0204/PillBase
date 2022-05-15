import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/pills/pill_worker/pill_worker_bloc.dart';
import '../../../domain/pills/pill.dart';
import '../../../injection.dart';
import '../core/saving_in_progress_overlay_widget.dart';
import 'widgets/pill_check_item_tile.dart';
import 'package:intl/intl.dart';

class PillOverviewPage extends StatelessWidget {
  const PillOverviewPage({Key? key}) : super(key: key);
  static const routeName = '/pill-overview-page';

  @override
  Widget build(BuildContext context) {
    //delete:
    final pill = ModalRoute.of(context)?.settings.arguments as Pill;

    return
        //delete BlocProvider
        BlocProvider(
      create: (context) =>
          sl<PillWorkerBloc>()..add(PillWorkerEvent.initialized(pill)),
      child: BlocConsumer<PillWorkerBloc, PillWorkerState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(() => null, (either) {
            either.fold(
              (failure) {
                FlushbarHelper.createError(
                  message: failure.map(
                    unexpected: (_) =>
                        'Unexpected error occured, please contact support.',
                    insufficientPermission: (_) => 'Insufficient permissions',
                    unableToUpdate: (_) =>
                        'Couldn\'t update the data. Was it deleted from another device?',
                  ),
                ).show(context);
              },
              // (_) => Navigator.of(context).popUntil(
              //   (route) => route.settings.name == PillsOverviewPage.routeName,
              // ),
              (_) => Navigator.of(context).pop(),
            );
          });
        },
        buildWhen: (previous, current) => previous.isSaving != current.isSaving,
        builder: (context, state) {
          return Stack(
            children: [
              const PillWorkerPageScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class PillWorkerPageScaffold extends StatelessWidget {
  const PillWorkerPageScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // add: final ctx = ModalRoute.of(context)?.settings.arguments as BuildContext;
    // add: final pill = ctx.read<PillWorkerBloc>().state.pill;
    //delete:

    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: BlocBuilder<PillWorkerBloc, PillWorkerState>(
          builder: (context, state) {
        final pill = state.pill;
        return (pill == null)
            ? const CircularProgressIndicator()
            : Column(
                children: [
                  const Spacer(flex: 1),
                  Expanded(
                    flex: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.tertiary,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: size.height * 0.05,
                            width: size.width,
                          ),
                          const Text('View a Reminder',
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold)),
                          SizedBox(height: size.height * 0.05),
                          _buildResume(
                            size,
                            'Medicine Name:',
                            pill.pillName.getOrCrash(),
                          ),
                          _buildResume(size, 'Amount:',
                              '${pill.pillNumber.getOrCrash()} ${pill.pillUnit.getOrCrash()}'),
                          _buildResume(
                            size,
                            'Time:',
                            DateFormat('HH:mm').format(
                              pill.timeOfDay.getOrCrash(),
                            ),
                          ),
                          _buildResume(size, 'Date Created:',
                              DateFormat('MM/dd/yy').format(pill.pillDateTime)),
                          SizedBox(height: size.height * 0.05),
                          _buildDaysOfWeek(
                              context: context,
                              weekDaysBool: pill.daysOfWeekBool),
                          SizedBox(height: size.height * 0.02),
                          Expanded(
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return PillCheckItemTile(
                                  index: index,
                                  // ctx: ctx
                                );
                              },
                              itemCount:
                                  pill.pillCheckItemsList.getOrCrash().length,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              );
      }),
    );
  }
}

Widget _buildResume(size, label, pillData) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        SizedBox(width: size.width * 0.07),
        Text(
          label,
          style: const TextStyle(fontSize: 17),
        ),
        Expanded(child: Container()),
        Text(
          pillData,
          style: const TextStyle(fontSize: 17),
        ),
        SizedBox(width: size.width * 0.07),
      ],
    ),
  );
}

Widget _buildDaysOfWeek({
  required BuildContext context,
  required List<bool> weekDaysBool,
}) {
  final size = MediaQuery.of(context).size;
  const List<String> weekdays = [
    'M',
    'T',
    'W',
    'T',
    'F',
    'S',
    'S',
  ];

  return SizedBox(
    height: 35,
    width: size.width * 0.9,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: weekdays.length,
      itemBuilder: (context, index) => Container(
        width: 35,
        margin: const EdgeInsets.symmetric(horizontal: 7),
        decoration: BoxDecoration(
          color: weekDaysBool[index]
              ? Theme.of(context).primaryColor
              : Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(child: Text(weekdays[index])),
      ),
    ),
  );
}
