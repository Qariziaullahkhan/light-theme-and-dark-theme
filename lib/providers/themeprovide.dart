import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeChanger with ChangeNotifier{
  var _thememode = ThemeMode.light;
  ThemeMode get themeMode => _thememode;
  void settheme(themeMode){
    _thememode = themeMode;
    notifyListeners();
  }

}