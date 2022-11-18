import 'package:flutter/material.dart';
import 'package:swayze/controller.dart';
import 'package:swayze/delegates.dart';
import 'package:swayze/widgets.dart';

class ExcelBody2 extends StatefulWidget {
  const ExcelBody2({super.key});

  @override
  State<ExcelBody2> createState() => _ExcelBody2State();
}

class _ExcelBody2State extends State<ExcelBody2> {
  final myStyle = SwayzeStyle.defaultSwayzeStyle.copyWith(
    userSelectionStyle: const SelectionStyle(
      backgroundColor: Colors.pink,
      borderSide: SelectionBorderSide.none(),
    ),
  );

  final verticalScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var controller;
    return CustomScrollView(
      slivers: [
        SliverSwayzeTable(
          controller: controller,
          style: myStyle,
          verticalScrollController: verticalScrollController,
          focusNode: FocusScope.of(context),
          cellDelegate: CellDelegate(),
          inlineEditorBuilder: (BuildContext context,
              IntVector2 coordinate,
              void Function() requestClose,
              String? initialText,
              bool overlapCell,
              bool overlapTable) {},
          // ...
        ),
      ],
    );
    ;
  }
}
