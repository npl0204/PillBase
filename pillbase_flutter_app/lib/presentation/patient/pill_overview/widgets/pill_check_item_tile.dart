import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../application/pills/pill_worker/pill_worker_bloc.dart';
import '../../../../domain/pills/pill_check_item.dart';

class PillCheckItemTile extends StatefulWidget {
  const PillCheckItemTile({
    Key? key,
    required this.index,
    // add required this.ctx,
  }) : super(key: key);
  final int index;
  // add final BuildContext ctx;

  @override
  State<PillCheckItemTile> createState() => _PillCheckItemTileState();
}

class _PillCheckItemTileState extends State<PillCheckItemTile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // add final pill = widget.ctx.read<PillWorkerBloc>().state.pill;
    // add final pillCheckItem =
    //     List.from(pill!.pillCheckItemsList.getOrCrash().reversed)[widget.index]
    //         as PillCheckItem;

    return BlocBuilder<PillWorkerBloc, PillWorkerState>(
      buildWhen: (p, c) => p.pill != c.pill,
      builder: (context, state) {
        final pill = state.pill;
        final pillCheckItem = List.from(
                pill!.pillCheckItemsList.getOrCrash().reversed)[widget.index]
            as PillCheckItem;
        return Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 8,
            ),
            child: Material(
              borderRadius: BorderRadius.circular(30),
              elevation: 2.5,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                width: size.width * 0.7,
                child: ListTile(
                  leading: Checkbox(
                    value: pillCheckItem.check,
                    activeColor: Theme.of(context).primaryColor,
                    onChanged: (value) {
                      final updatedPillCheckItemList = pill.pillCheckItemsList
                          .getOrCrash()
                          .map(
                            (item) => item.id.getOrCrash() ==
                                    pillCheckItem.id.getOrCrash()
                                ? PillCheckItem(
                                    check: value as bool,
                                    dateTime: item.dateTime,
                                    id: item.id,
                                  )
                                : item,
                          )
                          .toList();
                      //add  widget.ctx.read<PillWorkerBloc>().add(
                      //       PillWorkerEvent.changed(updatedPillCheckItemList),
                      //     );
                      //add  widget.ctx.read<PillWorkerBloc>().add(
                      //       PillWorkerEvent.createdUpdated(
                      //         pillId: pill.id.getOrCrash(),
                      //         dateTime: pillCheckItem.dateTime.toIso8601String(),
                      //         check: value as bool,
                      //         checkId: pillCheckItem.id.getOrCrash().toString(),
                      //       ),
                      //     );
                      context.read<PillWorkerBloc>().add(
                            PillWorkerEvent.changed(updatedPillCheckItemList),
                          );
                      context.read<PillWorkerBloc>().add(
                            PillWorkerEvent.createdUpdated(
                              pillId: pill.id.getOrCrash(),
                              dateTime: pillCheckItem.dateTime.toIso8601String(),
                              check: value as bool,
                              checkId: pillCheckItem.id.getOrCrash().toString(),
                            ),
                          );
                      setState(() {});
                    },
                  ),
                  title: Text(
                    DateFormat('MM/dd/yy HH:mm').format(pillCheckItem.dateTime),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
