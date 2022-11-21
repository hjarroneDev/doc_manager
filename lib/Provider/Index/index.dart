import 'package:flutter/material.dart';

class Indexs extends ChangeNotifier {
  int? _row;
  String? _column;

  TextEditingController? _indexControler = TextEditingController();
  TextEditingController? _indexContextControler = TextEditingController();

  String? get columnIndex => _column;
  int? get rowInsex => _row;
  TextEditingController? get indexControler => _indexControler;
  TextEditingController? get indexContextControler => _indexContextControler;

  getIndex(String col, int row, String context) {
    _row = row;
    _column = col;

    _indexControler = TextEditingController(text: '$_column$_row');
    _indexContextControler = TextEditingController(text: context);

    notifyListeners();
  }
}
