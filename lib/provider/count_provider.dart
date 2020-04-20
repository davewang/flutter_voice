import 'dart:convert';

import 'package:flutter/foundation.dart';

class CountProvider extends ChangeNotifier {

  int _count = 0;
  int get count =>  _count;

  set count(int newValue){
    _count = newValue;
    notifyListeners();
  }
  void incrementCounter(){
    _count ++;
    notifyListeners();
  }

}