import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Provider/PageControler/page_control.dart';
import '../../Doc/Excel/excel.dart';
import '../../Doc/Pdf/pdf.dart';
import '../../Doc/Setting/setting.dart';
import '../../Doc/Word/word.dart';
import 'DashResumo/dashResumo.dart';

class Dash extends StatefulWidget {
  const Dash({super.key});

  @override
  State<Dash> createState() => _DashState();
}

class _DashState extends State<Dash> {
  final controler = PageController(initialPage: 0);

  @override
  void dispose() {
    controler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: context.watch<PageControl>().controller,
        children: const [
          DashResumo(),
          WordDash(),
          ExcelDash(),
          PdfDash(),
          SettingDash(),
        ],
      ),
    );
  }
}
