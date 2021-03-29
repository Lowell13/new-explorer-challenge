import 'package:flutter/material.dart';

class Qsn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:SafeArea(
            child: Scaffold(
                body: ListView(
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Qui sommes nous?', style: Theme.of(context).textTheme.headline1),
                          Padding(
                            //padding: const EdgeInsets.all(8.0),
                            padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 20.0),
                            child: Text('The N.E.C est un challenge de réflexion pour la nouvelle génération suivi d’un défi d’action et de dépassement de soi ouvert à tous.', style: Theme.of(context).textTheme.bodyText1),
                          ),
                          Text('Nos Valeurs', style: Theme.of(context).textTheme.headline1),
                          Text('bla bla bla', style: Theme.of(context).textTheme.bodyText1),
                          Text('Nos Partenaires', style: Theme.of(context).textTheme.headline1),
                          Image.asset("assets/Logos/AT.png", width: 100, height: 100),
                          Image.asset('assets/Logos/awft_logo.png', width: 100, height: 100,),
                          Image.asset('assets/Logos/cropped-LogoRESPIRE.png'),
                          Image.asset('assets/Logos/G4.jpg'),
                          Image.asset('assets/Logos/logo-amos-noir.png'),
                          Image.asset('assets/Logos/logo-Atlas.png'),
                          Image.asset('assets/Logos/LOGO_CAMPUS_ACADEMY.png'),
                        ],
                      ),
                    ]
                )
            )
        )
    );
  }
}
