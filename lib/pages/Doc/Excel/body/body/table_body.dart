import 'package:flutter/material.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';
import 'package:provider/provider.dart';

import '../../../../../Provider/Listas/listas.dart';
import 'widget/cell_body.dart';
import 'widget/cell_row_dock.dart';

class TableBody extends StatefulWidget {
  final ScrollController scrollController;
  const TableBody({super.key, required this.scrollController});

  @override
  State<TableBody> createState() => _TableHeadState();
}

class _TableHeadState extends State<TableBody> {
  late LinkedScrollControllerGroup _controllers;
  late ScrollController _firstColumnController;
  late ScrollController _restColumnsController;

  @override
  void initState() {
    super.initState();
    _controllers = LinkedScrollControllerGroup();
    _firstColumnController = _controllers.addAndGet();
    _restColumnsController = _controllers.addAndGet();
  }

  @override
  void dispose() {
    _firstColumnController.dispose();
    _restColumnsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: SizedBox(
              width: 40,
              child: ListView(
                controller: _firstColumnController,
                physics: const AlwaysScrollableScrollPhysics(
                  parent: BouncingScrollPhysics(),
                ),
                children: [
                  for (var i = 0; i < context.watch<Listas>().rows; i++)
                    CellRowDock(
                      i: i,
                    ),
                ],
              ),
            ),
          ),
          Flexible(
            child: Scrollbar(
              thickness: 7,
              interactive: true,
              radius: const Radius.circular(5),
              controller: widget.scrollController,
              child: SingleChildScrollView(
                controller: widget.scrollController,
                scrollDirection: Axis.horizontal,
                physics: const ClampingScrollPhysics(),
                child: SizedBox(
                  width: (context.watch<Listas>().columns.length) * 110,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    controller: _restColumnsController,
                    physics: const AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics(),
                    ),
                    children: [
                      for (var i = 0; i < context.watch<Listas>().rows; i++)
                        Row(children: [
                          for (String column in context.watch<Listas>().columns)
                            CellBody(
                              column: column,
                              i: i,
                            )
                        ])
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
