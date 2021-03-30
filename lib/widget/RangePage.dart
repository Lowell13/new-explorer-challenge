import 'package:flutter/material.dart';

class RangePage extends StatefulWidget {
  final String nextPage;

  RangePage({this.nextPage});

  RangePageState createState() => RangePageState();
}

class RangePageState extends State<RangePage> {
  int _value = 10;

  @override
  Widget build(BuildContext context) {
    return Column(
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
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width *0.70,
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
              ],
            ),
            Container(
                height: 300,
                color: Colors.grey,
                child: Center(
                  child :Text(
                      'MAPS'
                  ),
                )
            ),
          ]
    );
  }
}
