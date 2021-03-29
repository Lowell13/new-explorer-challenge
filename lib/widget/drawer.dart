import 'package:flutter/material.dart';

Widget drawer(context) {
  return Drawer(
    child: ListView(
      children: [
        GestureDetector(
          onTapUp: (_) {
            Navigator.pushNamed(context, "/account");
          },
          child: Row(
            children: [
              Image.asset("assets/icons/account-icon.png", width: 50, height: 50),
              Text("Compte", style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ),
        GestureDetector(
          onTapUp: (_) {
            Navigator.pushNamed(context, "/score");
          },
          child: Row(
            children: [
              Image.asset("assets/icons/score-icon.png", width: 50, height: 50),
              Text("Score", style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ),
        GestureDetector(
          onTapUp: (_) {
            Navigator.pushNamed(context, "/proximity");
          },
          child: Row(
            children: [
              Image.asset("assets/icons/proximity-icon.png", width: 50, height: 50),
              Text("Voyage de proximité", style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ),
        GestureDetector(
          onTapUp: (_) {
            Navigator.pushNamed(context, "/france");
          },
          child: Row(
            children: [
              Image.asset("assets/icons/france-icon.png", width: 50, height: 50),
              Text("Voyage national", style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ),
        GestureDetector(
          onTapUp: (_) {
            Navigator.pushNamed(context, "/international");
          },
          child: Row(
            children: [
              Image.asset("assets/icons/international-icon.png", width: 50, height: 50),
              Text("Voyage international", style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ),
        GestureDetector(
          onTapUp: (_) {
            Navigator.pushNamed(context, "/mystery");
          },
          child: Row(
            children: [
              Image.asset("assets/icons/mystery-icon.png", width: 50, height: 50),
              Text("Voyage mystère", style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ),
        GestureDetector(
          onTapUp: (_) {
            Navigator.pushNamed(context, "/qsn");
          },
          child: Row(
            children: [
              Image.asset("assets/icons/information-icon.png", width: 50, height: 50),
              Text("Qui sommes-nous ?", style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ),
        GestureDetector(
          onTapUp: (_) {
            Navigator.pushNamed(context, "/logout");
          },
          child: Row(
            children: [
              Image.asset("assets/icons/logout-icon.png", width: 50, height: 50),
              Text("Se déconnecter", style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        )
      ],
    ),
  );
}