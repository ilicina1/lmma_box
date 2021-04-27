import 'package:flutter/material.dart';

class ScreenScrollProvider extends ChangeNotifier {
  int _page;

  ScreenScrollProvider(this._page);
  int get page => _page;
  void changePage(page) {
    if (page < 0) {
      _page = 0;
    } else {
    _page = page;}
    notifyListeners();
  }
}
