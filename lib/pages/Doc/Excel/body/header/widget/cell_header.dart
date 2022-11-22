import 'package:badges/badges.dart';
import 'package:doc_manager/Provider/Index/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CellHeader extends StatelessWidget {
  final String column;
  const CellHeader({super.key, required this.column});

  @override
  Widget build(BuildContext context) {
    var color;
    double width;
    bool visivel;

    if (context.watch<Indexs>().columnIndex == column) {
      color = Colors.green.withOpacity(0.2);
      width = 74;
      visivel = true;
    } else {
      Colors.white10.withOpacity(0.45);
      width = 110;
      visivel = false;
    }

    return SizedBox(
      width: 110,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
            visible: visivel,
            child: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 18,
              ),
            ),
          ),
          SizedBox(
            width: width,
            child: TextField(
              onTap: () {
                Provider.of<Indexs>(context, listen: false)
                    .getIndexCollum(column);
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
          ),
          Visibility(
            visible: visivel,
            child: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
