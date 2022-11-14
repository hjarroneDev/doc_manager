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
  bool ontap = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black12,
            width: 0.5,
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
