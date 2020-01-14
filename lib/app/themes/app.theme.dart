import 'package:flutter/material.dart';

const String fontFamily = 'Ubuntu';
const Color backgroundColor = Color(0xff131324);
const Color foregroundColor = Color(0xffeeeeee);
const Color dangerColor = Color(0xffcc3355);
const Color primaryColor = Color(0xff22cc99);
const Color secundaryColor = Color(0xff1e1e2f);

ThemeData appTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      brightness: Brightness.dark,
      color: secundaryColor,
      textTheme: TextTheme(
        title: TextStyle(
          color: foregroundColor,
          fontFamily: fontFamily,
          fontSize: 20,
        ),
      ),
    ),
    fontFamily: fontFamily,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: secundaryColor,
      backgroundColor: primaryColor,
    ),
    scaffoldBackgroundColor: backgroundColor,
    textTheme: TextTheme(
      title: TextStyle(color: foregroundColor),
    ),
  );
}
