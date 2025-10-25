import 'package:flutter/material.dart';
import 'package:habit_tracker/themes/dark.dart';
import 'package:habit_tracker/themes/light.dart';

class themeprovider extends ChangeNotifier{
  ThemeData thememode=lightmode;

  ThemeData get themedata => thememode;

  bool get isDark => thememode == darkmode;

  set themeData(ThemeData themda){
    thememode=themda;
    notifyListeners();
  }

  void toggleTheme(){
    thememode=isDark ? lightmode : darkmode;
    notifyListeners();
  }


}