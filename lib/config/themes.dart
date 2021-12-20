import 'package:flutter/material.dart';

class Themes {
  static String  font = 'Pacifico';

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black12,
    fontFamily:font ,

  );
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey[400],
    fontFamily: font,

  );

  
}