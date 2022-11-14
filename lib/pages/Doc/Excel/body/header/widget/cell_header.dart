import 'package:flutter/material.dart';

class CellHeader extends StatelessWidget {
  final String column;
  const CellHeader({super.key, required this.column});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        border: const Border(
          right: BorderSide(
            color: Colors.black12,
            width: 1.5,
          ),
          bottom: BorderSide(
            color: Colors.black12,
            width: 1.5,
          ),
        ),
      ),
      width: 100,
      child: Center(
        child: Text(column),
      ),
    );
  }
}
