import 'package:flutter/material.dart';

class Indexs extends ChangeNotifier {
  int? _row;
  String? _column;

  String? get columnIndex => _column;
  int? get rowInsex => _row;

  getIndex(String col, int row) {
    _row = row;
    _column = col;

    notifyListeners();
  }
}
