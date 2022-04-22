import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PillBase Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: TODOScreen(),
    );
  }
}
class TODOScreen extends StatefulWidget {
  TODOScreen({Key ?key}) : super(key: key);

  @override
  _TODOScreenState createState() => _TODOScreenState();
}

class _TODOScreenState extends State<TODOScreen> {
  DateTime _date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PillBase Reminder List"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          TextButton(
            onPressed: () {
              _datePicker();
            },
            child: Text(
              DateFormat("dd/MM/yyyy").format(_date).toString(),
            ),
          ),
          ListView.builder(
            padding: const EdgeInsets.all(10.0),
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Dismissible(
                  background: Container(
                    alignment: Alignment.centerLeft,
                    color: Colors.deepOrange[400],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.delete),
                    ),
                  ),
                  key: ValueKey(index),
                  child: Card(
                    margin: const EdgeInsets.all(0.0),
                    child: ListTile(
                      leading: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.check_circle_outline_outlined),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text("Reminder"),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Desc"),
                          Text("Date"),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  _datePicker() async {
    final today = DateTime.now();
    final selectedDate = await showDatePicker(
      initialDate: _date,
      context: context,
      firstDate: DateTime(2020, 11, 1),
      lastDate: DateTime(today.year + 1, today.month, today.day),
    );

    if (selectedDate != null && selectedDate != _date) {
      setState(() {
        _date = selectedDate;
      });
    }
  }
}