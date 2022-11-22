import 'package:doc_manager/Provider/Index/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CellHeader extends StatelessWidget {
  final String column;
  const CellHeader({super.key, required this.column});

  @override
  Widget build(BuildContext context) {
    var color = (context.watch<Indexs>().columnIndex == column)
        ? Colors.green.withOpacity(0.2)
        : Colors.white10.withOpacity(0.45);

    return SizedBox(
      width: 100,
      child: TextField(
        onTap: () {
          Provider.of<Indexs>(context, listen: false).getIndexCollum(column);
        },
        readOnly: true,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: column,
          hoverColor: Colors.green.withOpacity(0.2),
          filled: true,
          fillColor: color,
          isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
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
      ),
    )

        /* InkWell(
      hoverColor: Colors.green.withOpacity(0.2),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          border: Border(
            right: BorderSide(
              color: color,
              width: 0.75,
            ),
            bottom: BorderSide(
              color: color,
              width: 1.5,
            ),
            left: BorderSide(
              color: color,
              width: 0.75,
            ),
          ),
        ),
        width: 100,
        child: Center(
          child: Text(column),
        ),
      ),
    ) */
        ;
  }
}
