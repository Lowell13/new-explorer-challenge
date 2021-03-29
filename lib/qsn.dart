import 'package:flutter/material.dart';

class Qsn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:SafeArea(
            child: Scaffold(
                body: ListView(
                    children: [
                      Container(padding: EdgeInsets.all(10.0),
                          height: MediaQuery.of(context).size.height/3,
                          width: MediaQuery.of(context).size.width,
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Qui sommes nous?', style: Theme.of(context).textTheme.headline1),
                              Text('The N.E.C est un challenge de réflexion pour la nouvelle génération suivi d’un défi d’action et de dépassement de soi ouvert à tous.', style: Theme.of(context).textTheme.bodyText1)
                            ]
                          )),
                      Container(padding: EdgeInsets.all(10.0),
                          height: MediaQuery.of(context).size.height/3,
                          width: MediaQuery.of(context).size.width,
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Nos Valeurs', style: Theme.of(context).textTheme.headline1),
                              Text('bla bla bla', style: Theme.of(context).textTheme.bodyText1)])),
                      Container(padding: EdgeInsets.all(10.0),
                        height: MediaQuery.of(context).size.height/3,
                        width: MediaQuery.of(context).size.width,
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Nos Partenaires', style: Theme.of(context).textTheme.headline1),
                              GridView(
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 0.9,
                                  ),
                              children: [
                                Image.asset('assets/Logos/awft_logo.png', width: 100, height: 100,),
                                Image.asset('assets/Logos/cropped-LogoRESPIRE.png', width: 100, height: 100,),
                                Image.asset('assets/Logos/G4.jpg', width: 100, height: 100,),
                                Image.asset('assets/Logos/logo-amos-noir.png', width: 100, height: 100,),
                                Image.asset('assets/Logos/logo-Atlas.png', width: 100, height: 100,),
                                Image.asset('assets/Logos/LOGO_CAMPUS_ACADEMY.png', width: 100, height: 100,),
                                Image.asset("assets/Logos/AT.png", width: 100, height: 100,),
                                Image.asset("assets/Logos/S-Camp-Logo.png", width: 100, height: 100,),
                                Image.asset("assets/Logos/Tripwiz.png", width: 100, height: 100,),
                              ],
                              ),
                         /*    Column(
                                    children: [
                                      Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage("assets/Logos/AT.png")
                                          )
                                      ),
                                    ),
                                      Image.asset('assets/Logos/awft_logo.png', width: 100, height: 100,),
                                      Image.asset('assets/Logos/cropped-LogoRESPIRE.png'),
                                      Image.asset('assets/Logos/G4.jpg'),
                                      Image.asset('assets/Logos/logo-amos-noir.png'),
                                      Image.asset('assets/Logos/logo-Atlas.png'),
                                      Image.asset('assets/Logos/LOGO_CAMPUS_ACADEMY.png'),
                                    ],
                              ),*/
                              ],
                              ),
                            ),
                    ]
                )


            )

        )

    );
  }
}
