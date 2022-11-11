import 'package:flutter/material.dart';

class RowDeck extends StatelessWidget {
  const RowDeck({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i = 0; i < 22; i++)
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
            height: 25,
            child: Center(
              child: Text('${i + 1}'),
            ),
          ),
      ],
    );
  }
}
