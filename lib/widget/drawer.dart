import 'package:flutter/material.dart';

Widget drawer(context) {
  return Drawer(
    child: ListView(
      children: [
        Row(
          children: [
            Image.asset("assets/icons/account-icon.png", width: 50, height: 50),
            Text("Account", style: Theme.of(context).textTheme.bodyText1,),
          ],
        ),
        Row(
          children: [
            Image.asset("assets/icons/proximity-icon.png", width: 50, height: 50),
            Text("Voyage de proximité", style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
        Row(
          children: [
            Image.asset("assets/icons/france-icon.png", width: 50, height: 50),
            Text("Voyage national", style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
        Row(
          children: [
            Image.asset("assets/icons/international-icon.png", width: 50, height: 50),
            Text("Voyage international", style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
        Row(
          children: [
            Image.asset("assets/icons/mystery-icon.png", width: 50, height: 50),
            Text("Voyage mystère", style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
        Row(
          children: [
            Image.asset("assets/icons/information-icon.png", width: 50, height: 50),
            Text("Qui sommes-nous ?", style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
        Row(
          children: [
            Image.asset("assets/icons/logout-icon.png", width: 50, height: 50),
            Text("Se déconnecter", style: Theme.of(context).textTheme.bodyText1),
          ],
        )
      ],
    ),
  );
}