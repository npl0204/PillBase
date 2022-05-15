import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../../application/pills/pill_actor/pill_actor_bloc.dart';
import '../../../../domain/pills/pill.dart';
import '../../pill_form/pill_form_page.dart';
import '../../pill_overview/pill_overview_page.dart';

class PillCard extends StatelessWidget {
  final Pill pill;

  const PillCard({
    Key? key,
    required this.pill,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textColor = Theme.of(context).colorScheme.surfaceVariant;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
      child: Dismissible(
        key: ValueKey(pill.id.getOrCrash()),
        background: Container(
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).errorColor,
          ),
          child: Icon(
            Icons.delete,
            color: Theme.of(context).scaffoldBackgroundColor,
            size: 20,
          ),
        ),
        direction: DismissDirection.endToStart,
        onDismissed: (direction) =>
            context.read<PillActorBloc>().add(PillActorEvent.deleted(pill)),
        child: Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Theme.of(context).colorScheme.secondary,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                PillOverviewPage.routeName,
                arguments: pill,
              );
            },
            child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20.0,
                            left: 40,
                            bottom: 10,
                          ),
                          child: Text(
                            pill.pillName.getOrCrash(),
                            style:
                                Theme.of(context).textTheme.headline1!.copyWith(
                                      color: textColor,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20.0,
                            right: 40,
                            bottom: 10,
                          ),
                          child: Text(
                            DateFormat("HH:mm").format(pill.timeOfDay.getOrCrash()),
                            style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        color: Colors.grey, width: size.width * 0.8, height: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            top: 10.0,
                            left: 35,
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "${pill.pillNumber.getOrCrash()} ${pill.pillUnit.getOrCrash()}",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 15.0,
                                  ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                            right: 35,
                            bottom: 5,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.edit_notifications_rounded),
                            onPressed: () => Navigator.of(context).pushNamed(
                              PillFormPage.routeName,
                              arguments: pill,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )

                // subtitle: Text(
                //   "${pill.pillNumber.getOrCrash()} ${pill.pillUnit.getOrCrash()}",
                //   style: Theme.of(context).textTheme.headline5!.copyWith(
                //         color: Colors.grey[600],
                //         fontSize: 15.0,
                //       ),
                //   maxLines: 1,
                //   overflow: TextOverflow.ellipsis,
                // ),
                // trailing: Column(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     // Text(
                //     //   DateFormat("HH:mm").format(pill.pillDateTime),
                //     //   style: TextStyle(
                //     //     color: Colors.grey[500],
                //     //     fontWeight: FontWeight.w400,
                //     //     fontSize: 15,
                //     //   ),
                //     // ),
                //     IconButton(
                //       icon: const Icon(Icons.edit_notifications_rounded),
                //       onPressed: () => Navigator.of(context).pushNamed(
                //         PillFormPage.routeName,
                //         arguments: pill,
                //       ),
                //     ),
                // ],
                ),
          ),
        ),
      ),
    );
  }

  //--------------------------| SHOW THE DELETE DIALOG ON THE SCREEN |-----------------------

  // void _showDeleteDialog(
  //     BuildContext context, String medicineName, int medicineId, int notifyId) {
  //   showDialog(
  //       context: context,
  //       builder: (context) => AlertDialog(
  //             title: Text("Delete ?"),
  //             content: Text("Are you sure to delete $medicineName pill?"),
  //             contentTextStyle:
  //                 TextStyle(fontSize: 17.0, color: Colors.grey[800]),
  //             actions: [
  //               FlatButton(
  //                 splashColor: Theme.of(context).primaryColor.withOpacity(0.3),
  //                 child: Text(
  //                   "Cancel",
  //                   style: TextStyle(color: Theme.of(context).primaryColor),
  //                 ),
  //                 onPressed: () {
  //                   Navigator.of(context).pop();
  //                 },
  //               ),
  //               FlatButton(
  //                 splashColor: Theme.of(context).primaryColor.withOpacity(0.3),
  //                 child: Text("Delete",
  //                     style: TextStyle(color: Theme.of(context).primaryColor)),
  //                 onPressed: () async {
  //                   await Repository().deleteData('Pills', medicineId);
  //                   await Notifications().removeNotify(
  //                       notifyId, flutterLocalNotificationsPlugin);
  //                   setData();
  //                   Navigator.pop(context);
  //                 },
  //               ),
  //             ],
  //           ));
  // }
  //============================================================================================

}
