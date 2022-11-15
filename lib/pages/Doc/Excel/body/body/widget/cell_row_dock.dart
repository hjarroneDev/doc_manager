import 'package:doc_manager/Provider/Index/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CellRowDock extends StatelessWidget {
  final int i;
  const CellRowDock({super.key, required this.i});

  @override
  Widget build(BuildContext context) {
    var color = (context.watch<Indexs>().rowInsex == i + 1)
        ? Colors.blue.shade200
        : Colors.black12;

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        border: Border(
          bottom: BorderSide(
            color: color,
            width: 0.75,
          ),
          right: BorderSide(
            color: color,
            width: 1.5,
          ),
          top: BorderSide(
            color: color,
            width: 0.75,
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
