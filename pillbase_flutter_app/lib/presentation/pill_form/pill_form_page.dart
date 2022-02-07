import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pillbase_flutter_app/application/pill_for/pill_form_bloc.dart';
import 'package:provider/provider.dart';

import '../../../injection.dart';

import '../../../domain/pills/pill.dart';
import 'widgets/pill_data_body.dart';

class PillFormPage extends StatelessWidget {
  static const routeName = '/pill-form-page';

  const PillFormPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Pill? editedNote =
        ModalRoute.of(context)?.settings.arguments as Pill?;

    return BlocProvider(
      create: (context) => sl<PillFormBloc>()
        ..add(PillFormEvent.initialized(optionOf(editedNote))),
      child: BlocConsumer<PillFormBloc, PillFormState>(
          listenWhen: (p, c) =>
              p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
          listener: (context, state) {
            state.saveFailureOrSuccessOption.fold(() => null, (either) {
              either.fold(
                (failure) {},
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
                const NoteFormPageScaffold(),
                SavingInProgressOverlay(isSaving: state.isSaving)
              ],
            );
          }),
    );
  }
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingInProgressOverlay({Key? key, required this.isSaving})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Saving',
                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NoteFormPageScaffold extends StatelessWidget {
  const NoteFormPageScaffold({
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
              (failure) {},
              (_) => Navigator.of(context).pop(),
            );
          });
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: BlocBuilder<PillFormBloc, PillFormState>(
                buildWhen: (p, c) => p.isEditing != c.isEditing,
                builder: (context, state) {
                  return Text(
                    state.isEditing ? 'Edit a Reminder' : 'Create a Reminder',
                  );
                },
              ),
              actions: [
                IconButton(
                  onPressed: () {
                  },
                  icon: const Icon(
                    Icons.check,
                  ),
                )
              ],
            ),
            body: BlocBuilder<PillFormBloc, PillFormState>(
              buildWhen: (p, c) => p.showErrorMessage != c.showErrorMessage,
              builder: (context, state) {
                return Form(
                  autovalidate: state.showErrorMessage,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const PillDataBody(),
                        TextButton(
                          child: const Text('Save'),
                          onPressed: () {}
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
