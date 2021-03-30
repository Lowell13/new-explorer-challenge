import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page de details"),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            // Navigator.pushNamed(context, '/list');
          },
          child: Text('Go back to the List!'),
        ),
      ),
    );
  }
}