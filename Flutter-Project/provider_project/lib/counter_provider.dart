import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{

  int _count = 0;
  // to get the value
  int getCount()=> _count;
  // events or functions
  void incrementCount(){
    _count++;
    notifyListeners();
  }
  void decrementCount(){
    if(_count>0){
      _count--;
      notifyListeners();
    }
  }
}