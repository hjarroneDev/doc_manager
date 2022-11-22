import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../Provider/Listas/listas.dart';
import 'widget/cell_header.dart';
import 'widget/iconbt.dart';

class TableHead extends StatelessWidget {
  final ScrollController scrollController;
  const TableHead({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(children: [
        const IconBtSelAllShhet(),
        Expanded(
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              },
            ),
            child: ListView(
              controller: scrollController,
              physics: const ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                for (String column in context.watch<Listas>().columns)
                  CellHeader(
                    column: column,
                  ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
