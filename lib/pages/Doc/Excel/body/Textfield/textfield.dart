import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../Provider/Index/index.dart';

class TextFielder extends StatefulWidget {
  final int i;
  final String column;
  const TextFielder({super.key, required this.i, required this.column});

  @override
  State<TextFielder> createState() => _TextFielderState();
}

class _TextFielderState extends State<TextFielder> {
  late Indexs cellProvider;

  @override
  Widget build(BuildContext context) {
    cellProvider = Provider.of<Indexs>(context);
    return Expanded(
      child: TextField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          hoverColor: Colors.green.withOpacity(0.2),
          filled: true,
          isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 4, vertical: 9),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
              width: 0.8,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black26,
              width: 0.2,
            ),
          ),
        ),
      ),
    );
  }
}
