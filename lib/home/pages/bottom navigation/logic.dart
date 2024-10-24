import 'package:flutter/material.dart';

class NavigationbarHandler extends ChangeNotifier {
  int _currentIndex = 0;
  get currentIndex => _currentIndex;
  void nextIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
