import 'package:flutter/material.dart';

Widget trophyTab(context)  {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
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
              child: Text("Parcourus (km)", style: Theme.of(context).textTheme.bodyText1)
          )
        ],
      ),
      Row(
        children: [
          Container(
              padding: const EdgeInsets.only(right: 10.0),
              alignment: Alignment.centerRight,
              width: MediaQuery.of(context).size.width * 0.4,
              child: Text("6h45", style: Theme.of(context).textTheme.bodyText1)
          ),
          Container(
              alignment: Alignment.centerLeft,
              child: Text("Temps passé", style: Theme.of(context).textTheme.bodyText1)
          )
        ],
      ),
      Row(
        children: [
          Container(
              padding: const EdgeInsets.only(right: 10.0),
              alignment: Alignment.centerRight,
              width: MediaQuery.of(context).size.width * 0.4,
              child: Text("265", style: Theme.of(context).textTheme.bodyText1)
          ),
          Container(
              alignment: Alignment.centerLeft,
              child: Text("Dénivelé positif (m)", style: Theme.of(context).textTheme.bodyText1)
          )
        ],
      ),
      Row(
        children: [
          Container(
              padding: const EdgeInsets.only(right: 10.0),
              alignment: Alignment.centerRight,
              width: MediaQuery.of(context).size.width * 0.4,
              child: Text("165", style: Theme.of(context).textTheme.bodyText1)
          ),
          Container(
              alignment: Alignment.centerLeft,
              child: Text("Dénivelé négatif (m)", style: Theme.of(context).textTheme.bodyText1)
          )
        ],
      ),
    ],
  );
}