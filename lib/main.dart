import 'package:flutter/material.dart';
import 'package:nec/style/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Hello"),
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
    );
  }
}