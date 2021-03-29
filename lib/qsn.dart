import 'package:flutter/material.dart';

class Qsn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:SafeArea(
            child: Scaffold(
                body: Container(
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(padding: EdgeInsets.all(10.0),
                          color: Colors.black,
                            child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('Qui sommes nous?', style: TextStyle(fontSize: 30, color: Colors.white)),
                                Text('The N.E.C est un challenge de réflexion pour la nouvelle génération suivi d’un défi d’action et de dépassement de soi ouvert à tous.', style: TextStyle(color: Colors.white))
                              ]
                            )),
                        Container(padding: EdgeInsets.all(10.0),
                            color: Colors.pink,
                            child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('Nos Valeurs', style: TextStyle(fontSize: 30)),
                                Text('bla bla blauqodndoefuqihscnphfàeiscpnhàf_zasiCPNHFZ0ISPCHFZ0SIPCHFSINK')])),
                        Container(padding: EdgeInsets.all(10.0),
                          color: Colors.orange,
                            child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('Nos Partenaires', style: TextStyle(fontSize: 30)),
                                Text('bla bla bla blzdniocefepfjpoqjfpodkfpoqkdlqspfjpojqpofjpjfpjpqjiojeiofjqpoepofjqpfj'),
                                ],
                                ),
                              ),
                      ]
                  ),
                )


            )

        )

    );
  }
}
