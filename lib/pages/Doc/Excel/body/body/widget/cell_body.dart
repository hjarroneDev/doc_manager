import 'package:flutter/material.dart';

import '../../Textfield/textfield.dart';

class CellBody extends StatefulWidget {
  final int i;
  final String column;
  const CellBody({super.key, required this.i, required this.column});

  @override
  State<CellBody> createState() => _CellBodyState();
}

class _CellBodyState extends State<CellBody> {
  bool taped = false;

  @override
  Widget build(BuildContext context) {
    double width = 0.5;
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black12,
            width: width,
          )),
      height: 28,
      width: 100,
      child: TextFielder(
        column: widget.column,
        i: widget.i + 1,
      ),
    );
  }
}
