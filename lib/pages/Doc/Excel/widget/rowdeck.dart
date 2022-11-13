import 'package:flutter/material.dart';

class RowDeck extends StatelessWidget {
  const RowDeck({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i = 0; i < 25; i++)
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              border: const Border(
                bottom: BorderSide(
                  color: Colors.black12,
                  width: 1,
                ),
              ),
            ),
            height: 28,
            child: Center(
              child: Text('${i + 1}'),
            ),
          ),
      ],
    );
  }
}
