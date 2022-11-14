import 'package:flutter/material.dart';

class Indexs with ChangeNotifier {
  late int _row;
  late String _column;

  String get column => _column;
  int get row => _row;

  void getIndex(String col, int row) {
    _row = row;
    _column = col;

    print('$col$row ');

    notifyListeners();
  }
}
