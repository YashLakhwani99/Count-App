import 'package:flutter/material.dart';

class CounterNotifier extends ChangeNotifier {
  int _ans = 0;
  int get ans => this._ans;

  incrementValue() {
    this._ans += 1;
    notifyListeners();
  }

  decrementValue() {
    this._ans -= 1;
    notifyListeners();
  }

  restartValue() {
    this._ans = 0;
    notifyListeners();
  }
}
