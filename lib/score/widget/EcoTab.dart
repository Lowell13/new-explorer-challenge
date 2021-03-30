import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget ecoTab(context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Row(
        children: [
          Container(
              padding: const EdgeInsets.only(right: 10.0),
              alignment: Alignment.centerRight,
              width: MediaQuery.of(context).size.width * 0.4,
              child: Text("12", style: Theme.of(context).textTheme.bodyText1)
          ),
          Container(
              alignment: Alignment.centerLeft,
              child: Text("Co2 émis (g/km)", style: Theme.of(context).textTheme.bodyText1)
          )
        ],
      ),
      Row(
        children: [
          Container(
              padding: const EdgeInsets.only(right: 10.0),
              alignment: Alignment.centerRight,
              width: MediaQuery.of(context).size.width * 0.4,
              child: Text("37.5", style: Theme.of(context).textTheme.bodyText1)
          ),
          Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Text("Parcourus MA", style: Theme.of(context).textTheme.bodyText1,),
                  Text("(Mobilité alternative en km)",
                    style: TextStyle(
                        fontSize: 12
                    ),
                  )
                ],
              )
          )
        ],
      ),
    ],
  );
}