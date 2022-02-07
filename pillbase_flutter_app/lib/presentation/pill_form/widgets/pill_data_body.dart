import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pillbase_flutter_app/application/pill_for/pill_form_bloc.dart';
import 'package:provider/src/provider.dart';

class PillDataBody extends HookWidget {
  const PillDataBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> units = ["pills", "ml", "mg"];
    final size = MediaQuery.of(context).size;
    final focus = FocusScope.of(context);
    final nameEditingController = useTextEditingController();
    final numberEditingController = useTextEditingController();

    return BlocListener<PillFormBloc, PillFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        nameEditingController.text = state.pill.pillName.getOrCrash();
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              validator: (_) =>
                  context.read<PillFormBloc>().state.pill.pillName.value.fold(
                        (f) => 'Cannot be empty',
                        (r) => null,
                      ),
              textInputAction: TextInputAction.next,
              controller: nameEditingController,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0),
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 20.0),
                  labelText: "Pills Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          const BorderSide(width: 0.5, color: Colors.grey))),
              onChanged: (value) => context.read<PillFormBloc>().add(
                    PillFormEvent.pillNameChanged(value),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
