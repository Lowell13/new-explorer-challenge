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
        initialRoute: '/',
        routes: routes,
        home: Builder(
          builder: (context) => SafeArea(
            child: Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    child: Text('Inscription'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign_in');
                    },
                  ),
                  Text("Hello"),
                  Text("Hello"),
                  Text("Hello"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Hello"),
                      Text("Hello"),
                      Text("Hello"),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}