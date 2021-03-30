import 'package:flutter/material.dart';
import 'package:nec/widget/drawer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class Qsn extends StatelessWidget {
  static String myVideoId = 'nVi8d7hViW4';
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:SafeArea(
            child: Scaffold(
              appBar: AppBar(),
                drawer: drawer(context),
                body: ListView(
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                            child: Text('Qui sommes nous?', style: Theme.of(context).textTheme.headline1),),
                          YoutubePlayer(
                            controller: _controller,
                            liveUIColor: Colors.amber,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                            child: Text('The N.E.C est un challenge de réflexion pour la nouvelle génération suivi d’un défi d’action et de dépassement de soi ouvert à tous.', style: Theme.of(context).textTheme.bodyText1, textAlign: TextAlign.center,),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                            child: Text('Nos Valeurs', style: Theme.of(context).textTheme.headline1),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                            child: Text('Résilience, Optimisme, Partage et le Dépassement de soi', style: Theme.of(context).textTheme.bodyText1, textAlign: TextAlign.center,),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
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
