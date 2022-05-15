import 'package:flutter/material.dart';
import 'package:flutter_pill_app/presentation/dictionary/dictionary/dictionary_page.dart';

import '../../patient/pill_form/pill_form_page.dart';
import '../../patient/pills_overview/pills_overview_page.dart';
import 'menu_item_widget.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const menuItems = {
      0: {
        'route': PillFormPage.routeName,
        'icon': Icons.schedule_rounded,
        'label': 'Schedule'
      },
      1: {
        'route': DictionaryPage.routeName,
        'icon': Icons.search_rounded,
        'label': 'Search Medications'
      },
      2: {
        'route': PillFormPage.routeName,
        'icon': Icons.calendar_today_rounded,
        'label': 'View Calendar'
      },
      3: {
        'route': PillsOverviewPage.routeName,
        'icon': Icons.list_alt_rounded,
        'label': 'View Reminders'
      }
    };
    final mediaQuery = MediaQuery.of(context);

    return Positioned(
      top: mediaQuery.size.height * 0.34,
      right: mediaQuery.size.width * 0.05,
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          width: MediaQuery.of(context).size.width * 0.9,
          height: mediaQuery.size.height * 0.5,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiary,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.05),
                  blurRadius: 8,
                  spreadRadius: 3,
                  offset: const Offset(0, 10),
                ),
              ],
              borderRadius: BorderRadius.circular(10)),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 2 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: 4,
              itemBuilder: (BuildContext ctx, index) {
                final menuItem = menuItems[index] as Map<String, dynamic>;
                return MenuItem(
                  navigatingRoute: menuItem['route'] as String,
                  itemIcon: menuItem['icon'],
                  itemName: menuItem['label'],
                  index: index,
                );
              })),
    );
  }
}
