import 'package:flutter/material.dart';
import 'widget/menu_minA.dart';

class RowCellMenu extends StatefulWidget {
  const RowCellMenu({
    super.key,
  });

  @override
  State<RowCellMenu> createState() => _RowCellMenuState();
}

class _RowCellMenuState extends State<RowCellMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        MiniMenuA(),
        /*  Divider(
          height: 1,
          indent: 5,
          endIndent: 5,
        ), */
      ],
    );
  }
}
