import 'package:flutter/material.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';

import 'body/table_body.dart';
import 'header/table_head.dart';

class ExcelBody extends StatefulWidget {
  const ExcelBody({super.key});

  @override
  State<ExcelBody> createState() => _ExcelBodyState();
}

class _ExcelBodyState extends State<ExcelBody> {
  late LinkedScrollControllerGroup _controllers;
  late ScrollController _headController;
  late ScrollController _bodyController;

  @override
  void initState() {
    super.initState();
    _controllers = LinkedScrollControllerGroup();
    _headController = _controllers.addAndGet();
    _bodyController = _controllers.addAndGet();
  }

  @override
  void dispose() {
    _headController.dispose();
    _bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableHead(
          scrollController: _headController,
        ),
        Expanded(
          child: TableBody(
            scrollController: _bodyController,
          ),
        ),
      ],
    );
  }
}
