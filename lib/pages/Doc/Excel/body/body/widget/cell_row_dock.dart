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

    return TextField(
      readOnly: true,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: '${i + 1}',
        hoverColor: Colors.green.withOpacity(0.2),
        filled: true,
        fillColor: Colors.white10.withOpacity(0.45),
        isDense: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 4, vertical: 9.5),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 0.8,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black12,
          ),
        ),
      ),
    )

        /*   Container(
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
      height: 29,
      child: Center(
        child: Text('${i + 1}'),
      ),
    ) */
        ;
  }
}
