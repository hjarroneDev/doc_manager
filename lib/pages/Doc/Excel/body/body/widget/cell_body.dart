import 'package:flutter/material.dart';

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
    return InkWell(
      onTap: () {
        setState(() {
          ontap = true;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: (ontap) ? Colors.teal.shade600 : Colors.black12,
              width: 0.5,
            )),
        height: 28,
        width: 100,
        child: Center(
          child: Text('${widget.column}${widget.i + 1}'),
        ),
      ),
    );
  }
}
