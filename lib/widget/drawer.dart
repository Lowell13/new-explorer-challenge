import 'package:flutter/material.dart';

Widget drawer(context) {
  return Drawer(
    child: ListView(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: GestureDetector(
            onTapUp: (_) {
              Navigator.popAndPushNamed(context, "/account");
            },
            child: Row(
              children: [
                Image.asset("assets/icons/account-icon.png", width: 50, height: 50, color: Colors.amberAccent,),
                Text("Compte", style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: GestureDetector(
            onTapUp: (_) {
              Navigator.popAndPushNamed(context, "/score");
            },
            child: Row(
              children: [
                Image.asset("assets/icons/trophy-icon.png", width: 50, height: 50,),
                Text("Score", style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: GestureDetector(
            onTapUp: (_) {
              Navigator.popAndPushNamed(context, "/proximity");
            },
            child: Row(
              children: [
                Image.asset("assets/icons/drawer/flat_icon_street_view.png", width: 50, height: 50),
                Text("Voyage de proximité", style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: GestureDetector(
            onTapUp: (_) {
              Navigator.popAndPushNamed(context, "/france");
            },
            child: Row(
              children: [
                Image.asset("assets/icons/drawer/flat_icon_france.png", width: 50, height: 50),
                Text("Voyage national", style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: GestureDetector(
            onTapUp: (_) {
              Navigator.popAndPushNamed(context, "/international");
            },
            child: Row(
              children: [
                Image.asset("assets/icons/drawer/flat_icon_worldwide.png", width: 50, height: 50),
                Text("Voyage international", style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: GestureDetector(
            onTapUp: (_) {
              Navigator.popAndPushNamed(context, "/mystery");
            },
            child: Row(
              children: [
                Image.asset("assets/icons/drawer/flat_icon_mystery.png", width: 50, height: 50),
                Text("Voyage mystère", style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: GestureDetector(
            onTapUp: (_) {
              Navigator.popAndPushNamed(context, "/qsn");
            },
            child: Row(
              children: [
                Image.asset("assets/icons/information-icon.png", width: 50, height: 50, color: Colors.lightBlue),
                Text("Qui sommes-nous ?", style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: GestureDetector(
            onTapUp: (_) {
              Navigator.popAndPushNamed(context, "/connection");
            },
            child: Row(
              children: [
                Image.asset("assets/icons/logout-icon.png", width: 50, height: 50, color: Colors.red,),
                Text("Se déconnecter", style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
          ),
        )
      ],
    ),
  );
}