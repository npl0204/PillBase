import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:provider/src/provider.dart';

import '../../../../application/pills/pill_form/pill_form_bloc.dart';

class TimeButton extends StatefulWidget {
  const TimeButton({Key? key}) : super(key: key);

  @override
  State<TimeButton> createState() => _DateTimeButtonState();
}

class _DateTimeButtonState extends State<TimeButton> {
  DateTime setDateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PillFormBloc, PillFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        setDateTime = state.pill.timeOfDay.getOrCrash();
      },
      builder: (context, state) => TextButton(
        style: TextButton.styleFrom(
          primary: const Color.fromRGBO(7, 190, 200, 0.1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateFormat.Hm().format(setDateTime),
              style: const TextStyle(
                fontSize: 32.0,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 5),
            Icon(
              Icons.access_time,
              size: 30,
              color: Theme.of(context).primaryColor,
            )
          ],
        ),
        onPressed: () async {
          await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.fromDateTime(setDateTime),
                  helpText: "Choose Time")
              .then(
            (value) {
              DateTime newDate = DateTime(
                  setDateTime.year,
                  setDateTime.month,
                  setDateTime.day,
                  value != null ? value.hour : setDateTime.hour,
                  value != null ? value.minute : setDateTime.minute);
              setState(() => setDateTime = newDate);
              context.read<PillFormBloc>().add(
                    PillFormEvent.timeChanged(
                      setDateTime,
                    ),
                  );
            },
          );
        },
      ),
    );
  }
}
