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
    fontSize: 40,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  ),
  bodyText1: TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.w300,
  )
);