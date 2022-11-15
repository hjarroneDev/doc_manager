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

  bool readOnly = true;
  @override
  Widget build(BuildContext context) {
    cellProvider = Provider.of<Indexs>(context);
    return InkWell(
      onDoubleTap: () {
        setState(() {
          readOnly = false;
        });

        cellProvider.getIndex(widget.column, widget.i);
      },
      child: Expanded(
        child: TextField(
          readOnly: readOnly,
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 4, vertical: 9),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue,
                width: 0.8,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black26,
                width: 0.2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
