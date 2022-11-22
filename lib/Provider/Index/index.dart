import 'package:flutter/material.dart';

class Indexs extends ChangeNotifier {
  int? _row;
  String? _column;

  int? _rowColor;
  String? _columnColor;

  TextEditingController? _indexControler = TextEditingController();
  TextEditingController? _indexContextControler = TextEditingController();

  String? get columnIndex => _column;
  int? get rowInsex => _row;

  String? get columnIndexColor => _columnColor;
  int? get rowInsexColor => _rowColor;

  TextEditingController? get indexControler => _indexControler;
  TextEditingController? get indexContextControler => _indexContextControler;

  getIndex(String col, int row, String context) {
    _row = row;
    _column = col;

    _rowColor = 0;
    _columnColor = '';

    _indexControler = TextEditingController(text: '$_column$_row');
    _indexContextControler = TextEditingController(text: context);

    notifyListeners();
  }

  getIndexCollum(
    String col,
  ) {
    _columnColor = col;
    _rowColor = 0;

    _row = 0;
    _column = '';

    notifyListeners();
  }

  getIndexRow(int row) {
    _rowColor = row;
    _columnColor = '';

    _row = 0;
    _column = '';

    notifyListeners();
  }
}
