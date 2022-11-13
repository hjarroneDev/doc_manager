import 'package:flutter/material.dart';

class ColumnDeck extends StatelessWidget {
  const ColumnDeck({super.key});

  @override
  Widget build(BuildContext context) {
    var cells = [
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'J',
      'k',
      'L',
      'M'
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (String cell in cells)
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                border: const Border(
                  right: BorderSide(
                    color: Colors.black12,
                    width: 1.5,
                  ),
                ),
              ),
              width: 120,
              child: Center(
                child: Text(cell),
              ),
            ),
        ],
      ),
    );
  }
}
