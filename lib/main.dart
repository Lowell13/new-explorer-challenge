import 'package:flutter/material.dart';
import 'package:nec/routes/routes.dart';
import 'package:nec/style/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mainTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/score',
      routes: routes,
    );
  }
}
