import 'package:flutter/material.dart';

class MyBottomSheetModel extends ChangeNotifier{
  bool _visible = false;
  get visible => _visible;
  void changeState(){
    _visible = !_visible;
    print(_visible);
    notifyListeners();
  }
}