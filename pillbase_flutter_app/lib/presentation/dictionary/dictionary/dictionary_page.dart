import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/dictionary_body_widget.dart';
import 'widgets/search_bar_widget.dart';

import '../../../injection.dart';
import '../../../application/dictionary/dictionary_bloc.dart';

class DictionaryPage extends StatefulWidget {
  const DictionaryPage({Key? key}) : super(key: key);
  static const routeName = '/dictionary-page';

  @override
  State<DictionaryPage> createState() => _DictionaryPageState();
}

class _DictionaryPageState extends State<DictionaryPage> {
  final String query = '';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocProvider(
      create: (context) =>
          sl<DictionaryBloc>()..add(const DictionaryEvent.watchAllStarted()),
      child: Scaffold(
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
        body: Column(
          children: [
            SearchBar(text: query, hintText: 'Medicine Name'),
            const DictionaryBody(),
          ],
        ),
      ),
    );
  }
}
