import 'package:flutter/material.dart';

Widget WorldTab(context)  {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Row(
        children: [
          Container(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
              alignment: Alignment.centerRight,
              width: MediaQuery.of(context).size.width * 0.4,
              child: Text("2", style: Theme.of(context).textTheme.bodyText1)
          ),
          Container(
              alignment: Alignment.centerLeft,
              child: Text("Pays visités", style: Theme.of(context).textTheme.bodyText1)
          )
        ],
      ),
      Row(
        children: [
          Container(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
              alignment: Alignment.centerRight,
              width: MediaQuery.of(context).size.width * 0.4,
              child: Text("5", style: Theme.of(context).textTheme.bodyText1)
          ),
          Container(
              alignment: Alignment.centerLeft,
              child: Text("Voyages mystères", style: Theme.of(context).textTheme.bodyText1)
          )
        ],
      ),
      Row(
        children: [
          Container(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
              alignment: Alignment.centerRight,
              width: MediaQuery.of(context).size.width * 0.4,
              child: Text("2", style: Theme.of(context).textTheme.bodyText1)
          ),
          Container(
              alignment: Alignment.centerLeft,
              child: Text("Voyages nationaux", style: Theme.of(context).textTheme.bodyText1)
          )
        ],
      ),
      Row(
        children: [
          Container(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
              alignment: Alignment.centerRight,
              width: MediaQuery.of(context).size.width * 0.4,
              child: Text("0", style: Theme.of(context).textTheme.bodyText1)
          ),
          Container(
              alignment: Alignment.centerLeft,
              child: Text("Voyages internationaux", style: Theme.of(context).textTheme.bodyText1)
          )
        ],
      ),
    ],
  );
}