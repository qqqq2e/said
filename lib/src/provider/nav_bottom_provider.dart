import 'package:flutter/material.dart';

class BottomNavigationBarProvider with ChangeNotifier {
  int pageSelectionIndex = 0;

  int get fetchCurrentScreenIndex {
    return pageSelectionIndex;
  }

  void updateScreenIndex(int index) {
    pageSelectionIndex = index;
    notifyListeners();
  }
}
