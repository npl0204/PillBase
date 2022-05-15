import 'package:another_flushbar/flushbar_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../application/pills/pill_form/pill_form_bloc.dart';
import '../../../domain/pills/pill.dart';
import '../../../injection.dart';
import '../core/saving_in_progress_overlay_widget.dart';
import 'widgets/pill_data_body_widget.dart';
import 'widgets/time_button_widget.dart';
import 'widgets/week_day_picker_widget.dart';

class PillFormPage extends StatelessWidget {
  static const routeName = '/pill-form-page';

  const PillFormPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Pill? editedPill =
        ModalRoute.of(context)?.settings.arguments as Pill?;

    return BlocProvider(
      create: (context) => sl<PillFormBloc>()
        ..add(PillFormEvent.initialized(optionOf(editedPill))),
      child: BlocConsumer<PillFormBloc, PillFormState>(
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
          buildWhen: (previous, current) =>
              previous.isSaving != current.isSaving,
          builder: (context, state) {
            return Stack(
              children: [
                const PillFormPageScaffold(),
                SavingInProgressOverlay(isSaving: state.isSaving),
              ],
            );
          }),
    );
  }
}

class PillFormPageScaffold extends StatelessWidget {
  const PillFormPageScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final Pill? editedPill =
        ModalRoute.of(context)?.settings.arguments as Pill?;

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
      body: BlocBuilder<PillFormBloc, PillFormState>(
        buildWhen: (p, c) => p.showErrorMessage != c.showErrorMessage,
        builder: (context, state) {
          return Column(
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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: size.height * 0.05),
                        BlocBuilder<PillFormBloc, PillFormState>(
                          buildWhen: (p, c) => p.isEditing != c.isEditing,
                          builder: (context, state) {
                            return Text(
                                state.isEditing
                                    ? 'Edit a Reminder'
                                    : 'Create a Reminder',
                                style: const TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.bold));
                          },
                        ),
                        SizedBox(height: size.height * 0.05),
                        Form(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const PillDataBody(),
                                SizedBox(
                                    height: size.height * 0.05,
                                    width: size.width),
                                const TimeButton(),
                                SizedBox(height: size.height * 0.05),
                                const WeekDayPicker(),
                                SizedBox(height: size.height * 0.1),
                                TextButton(
                                  child: const Text(
                                    'Save',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () => context
                                      .read<PillFormBloc>()
                                      .add(const PillFormEvent.saved()),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
