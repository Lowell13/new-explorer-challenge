import 'package:flutter/material.dart';

Widget levelWidget(BuildContext context) {
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
          'Saisir niveau de difficulté',
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
              'Facile',
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
            color: Colors.lightGreen,
            child: new Text(
              'Moderé',
              style: new TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            onPressed: () => {
              // Navigator.pushNamed(context, '/range')
            },
            splashColor: Colors.green,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: new MaterialButton(
            height: 100.0,
            minWidth: double.infinity,
            color: Colors.yellowAccent,
            child: new Text(
              'Sportif',
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
            color: Colors.orangeAccent,
            child: new Text(
              'Difficile',
              style: new TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
            onPressed: () => {
              // Navigator.pushNamed(context, '/range')
            },
            splashColor: Colors.deepOrange,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: new MaterialButton(
            height: 100.0,
            minWidth: double.infinity,
            color: Colors.redAccent,
            child: new Text(
              'Extrême',
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
