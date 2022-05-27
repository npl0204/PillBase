import 'package:flutter/material.dart';
import '../../entry/entry_page.dart';

import '../../../../domain/dictionary/entry.dart';

class EntryTile extends StatelessWidget {
  const EntryTile({
    Key? key,
    required this.entry,
  }) : super(key: key);

  final Entry entry;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: ListTile(
            title: Text(entry.entryName),
            trailing: IconButton(
              onPressed: () => Navigator.of(context).pushNamed(
                EntryPage.routeName,
                arguments: entry,
              ),
              icon: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width * 0.95,
              color:
                  Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.5),
            ),
          ],
        ),
      ],
    );
  }
}
