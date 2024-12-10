import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{
  int _counter = 0;

  void incrementCount(){
    _counter++;
    notifyListeners();
  }
  int getCounterValue() => _counter;
}