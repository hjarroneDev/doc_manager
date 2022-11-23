import 'package:doc_manager/Provider/Index/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CellRowDock extends StatelessWidget {
  final int i;
  const CellRowDock({super.key, required this.i});

  @override
  Widget build(BuildContext context) {
    var color = (context.watch<Indexs>().rowInsex == i + 1)
        ? Colors.green.withOpacity(0.2)
        : Colors.white10.withOpacity(0.45);
    return TextField(
      onTap: () {
        Provider.of<Indexs>(context, listen: false).getIndexRow(i + 1);
      },
      readOnly: true,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: '${i + 1}',
        hoverColor: Colors.green.withOpacity(0.2),
        filled: true,
        fillColor: color,
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 4, vertical: 9),
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
    );
  }
}
