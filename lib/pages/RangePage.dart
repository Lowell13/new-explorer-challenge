import 'package:flutter/material.dart';

class RangePage extends StatefulWidget {
  RangePageState createState() => RangePageState();
}

class RangePageState extends State<RangePage> {
  int _value = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Voyage de proximité',
              textAlign: TextAlign.center,
              style: new TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'Saisir rayon',
              textAlign: TextAlign.center,
              style: new TextStyle(
                fontSize: 15.0,
              ),
            ),
            Container(
              child: Slider(
                value: _value.toDouble(),
                min: 1.0,
                max: 30.0,
                activeColor: Colors.cyan,
                inactiveColor: Colors.black,
                onChanged: (double newValue) {
                  setState(() {
                    _value = newValue.round();
                  });
                },
              ),
            ),
            Container(
                height: 550,
                color: Colors.grey,
                child: Center(
                  child :Text(
                      'MAPS'
                  ),
                )
            ),
          ]
      ),
    );
  }
}
