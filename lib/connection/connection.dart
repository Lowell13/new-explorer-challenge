import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Connection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/Logos/nec-logo.png", width: MediaQuery.of(context).size.width *0.66),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Identifiant",
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Mot de passe",
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.cyan,
                        ),
                        child: Text('Se connecter'),
                        onPressed: () {
                          Navigator.pushNamed(context, '/score');
                        },
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.cyan,),
                child: Text('S\'inscrire'),
                onPressed: () {
                  Navigator.pushNamed(context, '/sign_in');
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.cyan,),
                child: Text('map'),
                onPressed: () {
                  Navigator.pushNamed(context, '/map');
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/icons/connection/flat_icon_instagram.png", width: 35, height: 35),
                  Image.asset("assets/icons/connection/flat_icon_facebook.png", width: 35, height: 35),
                  Image.asset("assets/icons/connection/flat_icon_twitter.png", width: 35, height: 35),
                ],
              ),
              Text("Copyright 2021-2022"),
            ],
          ),
        ),
      ),
    );
  }
}
