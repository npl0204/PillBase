import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/dictionary/dictionary_bloc.dart';

class SearchBar extends StatefulWidget {
  final String text;
  final String hintText;

  const SearchBar({
    Key? key,
    required this.text,
    required this.hintText,
  }) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchBar> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final styleActive = TextStyle(color: Colors.black);
    final styleHint = TextStyle(color: Colors.black54);
    final style = widget.text.isEmpty ? styleHint : styleActive;

    return BlocBuilder<DictionaryBloc, DictionaryState>(
      builder: (context, state) {
        return Container(
          height: 42,
          margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).colorScheme.secondary,
            border: Border.all(color: Colors.black26),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              icon: Icon(Icons.search, color: style.color),
              hintText: widget.hintText,
              hintStyle: style,
              border: InputBorder.none,
            ),
            style: style,
            onChanged: (value) => context
                .read<DictionaryBloc>()
                .add(DictionaryEvent.search(value)),
          ),
        );
      },
    );
  }
}
