import 'package:flutter/material.dart';

class ZYCCounterViewModel extends ChangeNotifier{
  int _counter = 100;

  int get counter => _counter;

  set counter(int value) {
    _counter = value;
    notifyListeners();
  }
}