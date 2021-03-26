import 'package:flutter/material.dart';

ThemeData mainTheme = ThemeData(
  appBarTheme: mainAppBar,
  brightness: Brightness.light,
  primaryColor: Colors.cyan,
  accentColor: Colors.amberAccent,
  backgroundColor: Colors.white,
  textTheme: mainTextTheme
);

AppBarTheme mainAppBar = AppBarTheme();

TextTheme mainTextTheme = TextTheme(
  headline1: TextStyle(
    fontSize: 10,
    color: Colors.red,
  ),
  bodyText1: TextStyle(
    fontSize: 12,
    color: Colors.green
  )
);