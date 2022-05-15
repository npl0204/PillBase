import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'entry_tile_widget.dart';

import '../../../../application/dictionary/dictionary_bloc.dart';

class DictionaryBody extends StatelessWidget {
  const DictionaryBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DictionaryBloc, DictionaryState>(
      builder: (context, state) => state.map(
        initial: (e) => Container(),
        loadInProgress: (e) => const Expanded(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
        loadSuccess: (e) => Expanded(
          child: e.entries.isNotEmpty
              ? ListView.builder(
                  itemBuilder: (context, index) =>
                      EntryTile(entry: e.entries[index]),
                  itemCount: e.entries.length,
                )
              : const Center(
                  child: Text('No Medicine Found'),
                ),
        ),
        loadFailure: (e) => Container(),
      ),
    );
  }
}
