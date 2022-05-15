import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../application/pills/pill_form/pill_form_bloc.dart';

class WeekDayPicker extends HookWidget {
  const WeekDayPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final selectedDaysHook = useState([
      true,
      false,
      false,
      false,
      false,
      false,
      false,
    ]);
    const List<String> weekdays = [
      'M',
      'T',
      'W',
      'T',
      'F',
      'S',
      'S',
    ];

    return BlocListener<PillFormBloc, PillFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        selectedDaysHook.value = state.pill.daysOfWeekBool;
      },
      child: SizedBox(
        height: 35,
        width: size.width * 0.9,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: weekdays.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              List<bool> newList = List<bool>.from(selectedDaysHook.value);
              newList[index] = !newList[index];
              final selectedDays = context
                  .read<PillFormBloc>()
                  .state
                  .pill
                  .daysOfWeek
                  .getOrCrash();
              if (!selectedDaysHook.value[index]) {
                selectedDays.add(index + 1);
                selectedDaysHook.value = newList;
              } else if(selectedDays.length != 1 && selectedDaysHook.value[index]) {
                selectedDays.remove(index + 1);
                selectedDaysHook.value = newList;
              } else if(selectedDays.length == 1 && !selectedDaysHook.value[index] ){
                selectedDays.add(index + 1);
                selectedDaysHook.value = newList;
              }
              context.read<PillFormBloc>().add(PillFormEvent.dayOfWeekChanged(
                  selectedDays, selectedDaysHook.value));
            },
            child: Container(
              width: 35,
              margin: const EdgeInsets.symmetric(horizontal: 7),
              decoration: BoxDecoration(
                color: selectedDaysHook.value[index] ? Theme.of(context).primaryColor : Theme.of(context).colorScheme.secondary ,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(child: Text(weekdays[index])),
            ),
          ),
        ),
      ),
    );
  }
}
