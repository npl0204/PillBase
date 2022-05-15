import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../../application/pills/pill_form/pill_form_bloc.dart';

class PillDataBody extends HookWidget {
  const PillDataBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> units = ["pill(s)", "ml", "mg"];
    final size = MediaQuery.of(context).size;
    final focus = FocusScope.of(context);
    final nameEditingController = useTextEditingController();
    final numberEditingController = useTextEditingController();
    final toggle = context.watch<PillFormBloc>().state.showErrorMessage;

    return BlocListener<PillFormBloc, PillFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        nameEditingController.text = state.pill.pillName.getOrCrash();
        numberEditingController.text = state.pill.pillNumber.getOrCrash();
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: size.width * 0.9,
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (_) => toggle
                  ? context.read<PillFormBloc>().state.pill.pillName.value.fold(
                        (f) => 'Cannot be empty',
                        (r) => null,
                      )
                  : null,
              textInputAction: TextInputAction.next,
              controller: nameEditingController,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0),
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 20.0),
                  labelText: "Pill's Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          const BorderSide(width: 0.5, color: Colors.grey))),
              onChanged: (value) => context.read<PillFormBloc>().add(
                    PillFormEvent.pillNameChanged(value),
                  ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width * 0.4,
                padding: EdgeInsets.only(
                    right: size.width * 0.025, top: size.width * 0.025),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (_) => toggle ? context
                      .read<PillFormBloc>()
                      .state
                      .pill
                      .pillNumber
                      .value
                      .fold(
                        (f) => 'Cannot be empty',
                        (r) => null,
                      ) : null,
                  controller: numberEditingController,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 15.0),
                      labelText: "Pills Amount",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                              width: 0.5, color: Colors.grey))),
                  onChanged: (value) => context.read<PillFormBloc>().add(
                        PillFormEvent.pillNumberChanged(value),
                      ),
                ),
              ),
              Container(
                width: size.width * 0.4,
                padding: EdgeInsets.only(
                    left: size.width * 0.025, top: size.width * 0.025),
                child: DropdownButtonFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (_) => toggle ? context
                      .read<PillFormBloc>()
                      .state
                      .pill
                      .pillUnit
                      .value
                      .fold(
                        (f) => 'Cannot be empty',
                        (r) => null,
                      ) : null,
                  onTap: () => focus.unfocus(),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 13.4),
                      labelText: "Units",
                      labelStyle: const TextStyle(fontSize: 16),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                              width: 0.5, color: Colors.grey))),
                  items: units
                      .map((weight) => DropdownMenuItem(
                            child: Text(weight),
                            value: weight,
                          ))
                      .toList(),
                  onChanged: (value) => context.read<PillFormBloc>().add(
                        PillFormEvent.pillUnitChanged(value as String),
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
