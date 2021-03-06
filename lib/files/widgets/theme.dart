import 'package:bonap/files/tools.dart';
import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData _themeData;

  ThemeChanger(ThemeData themeData) {
    _themeData = themeData;
    OwnColor.blackTheme = themeData == ThemeData.dark() ? true : false;
  }

  getTheme() => _themeData.copyWith(
        cursorColor: Color(0xFFEE5623), //Curseur
        errorColor: Colors.red, //Error form
        primaryIconTheme: IconThemeData(color: Colors.black),
        textSelectionColor: _themeData == ThemeData.dark()
            ? Colors.white.withOpacity(0.5)
            : Colors.black.withOpacity(0.5),
        textSelectionHandleColor: _themeData == ThemeData.dark()
            ? Colors.white.withOpacity(0.5)
            : Colors.black.withOpacity(0.5),
        // scaffoldBackgroundColor: Color.fromRGBO(50, 50, 50, 1), //Fond
        // hintColor: Colors.yellow, //Hint
      );

  setTheme(_themeData) {
    this._themeData = _themeData;

    notifyListeners();
  }
}
