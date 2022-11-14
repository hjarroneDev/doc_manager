import 'package:flutter/material.dart';

class CellRowDock extends StatelessWidget {
  final int i;
  const CellRowDock({super.key, required this.i});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        border: const Border(
          bottom: BorderSide(
            color: Colors.black12,
            width: 1.5,
          ),
          right: BorderSide(
            color: Colors.black12,
            width: 1.5,
          ),
        ),
      ),
      height: 28,
      child: Center(
        child: Text('${i + 1}'),
      ),
    );
  }
}
