import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Counter with ChangeNotifier{
  int _count=0;
  int get count => _count;
  void incrementCount(){
    _count++;
    notifyListeners();
  }
  void decrementCount(){
    _count--;
    notifyListeners();
  }
}