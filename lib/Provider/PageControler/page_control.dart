import 'package:flutter/material.dart';

class PageControl with ChangeNotifier {
  bool _dash = true;
  bool _word = false;
  bool _excel = false;
  bool _pdf = false;
  bool _setting = false;

  final _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool get dash => _dash;
  bool get word => _word;
  bool get excel => _excel;
  bool get pdf => _pdf;
  bool get setting => _setting;

  get controller => _controller;

  void dashVisivel() {
    _dash = true;
    _word = false;
    _excel = false;
    _pdf = false;
    _setting = false;

    _controller.animateToPage(
      0,
      duration: const Duration(milliseconds: 1),
      curve: Curves.bounceInOut,
    );

    notifyListeners();
  }

  void wordVisivel() {
    _dash = false;
    _word = true;
    _excel = false;
    _pdf = false;
    _setting = false;
    _controller.animateToPage(
      1,
      duration: const Duration(milliseconds: 1),
      curve: Curves.bounceInOut,
    );
    notifyListeners();
  }

  void excelVisivel() {
    _dash = false;
    _word = false;
    _excel = true;
    _pdf = false;
    _setting = false;

    _controller.animateToPage(
      2,
      duration: const Duration(milliseconds: 1),
      curve: Curves.bounceInOut,
    );
    notifyListeners();
  }

  void pdfVisivel() {
    _dash = false;
    _word = false;
    _excel = false;
    _pdf = true;
    _setting = false;
    _controller.animateToPage(
      3,
      duration: const Duration(milliseconds: 1),
      curve: Curves.bounceInOut,
    );
    notifyListeners();
  }

  void settingVisivel() {
    _dash = false;
    _word = false;
    _excel = false;
    _pdf = false;
    _setting = true;
    _controller.animateToPage(
      4,
      duration: const Duration(milliseconds: 1),
      curve: Curves.bounceInOut,
    );

    notifyListeners();
  }
}
