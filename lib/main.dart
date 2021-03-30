import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales : [
          Locale('fr', 'FR'),
        ],
        locale: Locale('fr'),
        debugShowCheckedModeBanner: false,
        initialRoute: '/connection',
        routes: routes
    );
  }
}