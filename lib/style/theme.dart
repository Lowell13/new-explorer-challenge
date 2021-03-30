import 'package:flutter/material.dart';

ThemeData mainTheme = ThemeData(
  appBarTheme: mainAppBar,
  brightness: Brightness.light,
  primaryColor: Colors.cyan,
  accentColor: Colors.amber[100],
  backgroundColor: Colors.white,
  textTheme: mainTextTheme
);

AppBarTheme mainAppBar = AppBarTheme(
  color: Colors.cyan,
  shadowColor: Colors.black,
);

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