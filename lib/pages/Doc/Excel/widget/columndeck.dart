import 'package:flutter/material.dart';

class ColumnDeck extends StatelessWidget {
  const ColumnDeck({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            border: const Border(
              right: BorderSide(
                color: Colors.black12,
                width: 1,
              ),
            ),
          ),
          height: 28,
          width: 90,
          child: const Center(
            child: Text('A'),
          ),
        ),
      ],
    );
  }
}
