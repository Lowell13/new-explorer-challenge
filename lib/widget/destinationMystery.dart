import 'package:flutter/material.dart';

Widget destinationMystery(BuildContext context) {
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
        'Saisir la destination',
        textAlign: TextAlign.center,
        style: new TextStyle(
          fontSize: 15.0,
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: new MaterialButton(
          height: 100.0,
          minWidth: double.infinity,
          color: Colors.cyanAccent,
          child: new Text(
            'Proche',
            style: new TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          onPressed: () => {
            // Navigator.pushNamed(context, '/range')
          },
          splashColor: Colors.blue,
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: new MaterialButton(
          height: 100.0,
          minWidth: double.infinity,
          color: Colors.yellowAccent,
          child: new Text(
            'National',
            style: new TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
          onPressed: () => {
            // Navigator.pushNamed(context, '/range')
          },
          splashColor: Colors.yellow,
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: new MaterialButton(
          height: 100.0,
          minWidth: double.infinity,
          color: Colors.redAccent,
          child: new Text(
            'International',
            style: new TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
          onPressed: () => {
            // Navigator.pushNamed(context, '/range')
          },
          splashColor: Colors.red,
        ),
      ),
    ],
  );
}