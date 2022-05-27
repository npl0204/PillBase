import 'package:flutter/material.dart';

import '../../../domain/dictionary/entry.dart';

class EntryPage extends StatelessWidget {
  const EntryPage({Key? key}) : super(key: key);
  static const routeName = '/entry-page';

  @override
  Widget build(BuildContext context) {
    final entry = ModalRoute.of(context)!.settings.arguments as Entry;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        shadowColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(
                entry.entryName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            EntryInfoColumn(
              sectionName: 'Class',
              data: entry.entryClass,
            ),
            EntryInfoColumn(
              sectionName: 'Indication',
              data: entry.indication,
            ),
            EntryInfoColumn(
              sectionName: 'Formulation',
              data: entry.formulation,
            ),
            EntryInfoColumn(
              sectionName: 'Dose',
              data: entry.dose,
            ),
            EntryInfoColumn(
              sectionName: 'Contraindication',
              data: entry.contraindication,
            ),
            EntryInfoColumn(
              sectionName: 'Caution',
              data: entry.caution,
            ),
            EntryInfoColumn(
              sectionName: 'Side effects',
              data: entry.sideEffects,
            ),
            EntryInfoColumn(
              sectionName: 'Instructions',
              data: entry.instructions,
            ),
          ],
        ),
      ),
    );
  }
}



class EntryInfoColumn extends StatelessWidget {
  const EntryInfoColumn({
    Key? key,
    required this.sectionName,
    required this.data,
  }) : super(key: key);
  final String sectionName;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              sectionName,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ),
          Text(data),
        ],
      ),
    );
  }
}
