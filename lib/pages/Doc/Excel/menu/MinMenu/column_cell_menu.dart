import 'package:flutter/material.dart';
import 'widget/menu_minA.dart';

class ColumCellMenu extends StatelessWidget {
  const ColumCellMenu({super.key});

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
