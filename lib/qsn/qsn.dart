import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nec/widget/drawer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:nec/style/theme.dart';



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
        theme: mainTheme,
        debugShowCheckedModeBanner: false,
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
                          CarouselSlider(items: [ Container(
                            margin: EdgeInsets.fromLTRB(10.0,55.0,10.0,55.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image : AssetImage("assets/Logos/AT.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                            Container(
                              margin: EdgeInsets.all(0.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image : AssetImage("assets/Logos/awft_logo.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(20.0,0.0,20.0,0.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image : AssetImage("assets/Logos/cropped-LogoRESPIRE.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image : AssetImage("assets/Logos/G4.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0.0,26.0,0.0,27.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0.0),
                                image: DecorationImage(
                                  image: AssetImage("assets/Logos/logo-amos-noir.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0.0,40.0,0.0,40.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image : AssetImage("assets/Logos/logo-Atlas.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(75.0,0.5,75.0,0.5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image : AssetImage("assets/Logos/LOGO_CAMPUS_ACADEMY.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),],
                            options: CarouselOptions(
                              height: 180.0,
                              enlargeCenterPage: true,
                              autoPlay: true,
                              aspectRatio: 16 / 9,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enableInfiniteScroll: true,
                              autoPlayAnimationDuration: Duration(milliseconds: 800),
                              viewportFraction: 0.8,
                            ),),
                        ],
                      ),
                    ]
                )
            )
        )
    );
  }
}
