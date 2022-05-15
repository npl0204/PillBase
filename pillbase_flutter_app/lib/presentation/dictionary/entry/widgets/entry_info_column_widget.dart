import 'package:flutter/material.dart';

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
