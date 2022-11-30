import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../Provider/Index/index.dart';

class TextFielderFormula extends StatefulWidget {
  const TextFielderFormula({
    super.key,
  });

  @override
  State<TextFielderFormula> createState() => _TextFielderFormulaState();
}

class _TextFielderFormulaState extends State<TextFielderFormula> {
  TextEditingController textFieldontroler = TextEditingController();
  late Indexs cellProvider;

  @override
  void initState() {
    textFieldontroler = TextEditingController(); //default text
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      controller: context.watch<Indexs>().indexContextControler,
      textAlign: TextAlign.start,
      decoration: const InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: Colors.white,
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
            width: 0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black12,
          ),
        ),
      ),
    );
  }
}
