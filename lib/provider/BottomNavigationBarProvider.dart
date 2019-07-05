import 'package:flutter/material.dart';

class BottomNavigationBarProvider with ChangeNotifier {
  int _currentIndex = 0;
  Color _currentColor=Colors.amber;

  get currentIndex => _currentIndex;
  get currentColor=> _currentColor;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  set currentColor(int index) {
    switch(index){
      case 0:{
        // home
        _currentColor = Colors.amber;
        break;
      }
      case 1:{
        // profile
        _currentColor = Colors.blue;
        break;
      }
      case 2:{
        // setting
        _currentColor = Colors.cyanAccent;
        break;
      }
    }
    notifyListeners();
  }

}