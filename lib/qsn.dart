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
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                            child: Text('Qui sommes nous?', style: Theme.of(context).textTheme.headline1),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                            child: Text('The N.E.C est un challenge de réflexion pour la nouvelle génération suivi d’un défi d’action et de dépassement de soi ouvert à tous.', style: Theme.of(context).textTheme.bodyText1, textAlign: TextAlign.center,),),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                            child: Text('Nos Valeurs', style: Theme.of(context).textTheme.headline1),),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                            child: Text('Résilience, Optimisme, Partage et le Dépassement de soi', style: Theme.of(context).textTheme.bodyText1, textAlign: TextAlign.center,),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                            child: Text('Nos Partenaires', style: Theme.of(context).textTheme.headline1),),
                          GridView.count(
                              shrinkWrap: true,
                              crossAxisCount: 2,
                              physics: ScrollPhysics(),
                              children: [
                                Image.asset("assets/Logos/AT.png", width: 100, height: 100),
                                Image.asset('assets/Logos/awft_logo.png', width: 100, height: 100,),
                                Image.asset('assets/Logos/cropped-LogoRESPIRE.png', width: 100, height: 100,),
                                Image.asset('assets/Logos/G4.jpg', width: 100, height: 100,),
                                Image.asset('assets/Logos/logo-amos-noir.png', width: 100, height: 100,),
                                Image.asset('assets/Logos/logo-Atlas.png', width: 100, height: 100,),
                                Image.asset('assets/Logos/LOGO_CAMPUS_ACADEMY.png', width: 100, height: 100,),
                              ]
                          ),
                        ],
                      ),
                    ]
                )
            )
        )
    );
  }
}
