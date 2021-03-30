import 'package:flutter/material.dart';
import 'package:nec/style/theme.dart';
import 'package:nec/widget/drawer.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  ListPageState createState() => new ListPageState();
}

class ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: mainTheme,
      home: SafeArea(
        child: new Scaffold(
          appBar: new AppBar(),
          drawer: drawer(context),
          body: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.zero)
                        )
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    itemExtent: 120.0,
                    padding: EdgeInsets.all(10),
                    children: <Widget>[
                      Container(
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          color: Colors.white30,
                          elevation: 10,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Image.asset(
                                    'assets/images/image_list_01.png',
                                    fit: BoxFit.fill
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                      child: Text(
                                        'Trail coeur de Bretagne',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.5,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                                            'Ut sit amet magna nec quam auctor blandit iaculis.',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 40, 0, 0),
                                    child: Icon(
                                        Icons.directions_walk
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          color: Colors.white30,
                          elevation: 10,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Image.asset(
                                    'assets/images/image_list_02.png',
                                    fit: BoxFit.fill
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                      child: Text(
                                        'Randonnée Ile de Bréhat',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.5,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                                            'Ut sit amet magna nec quam auctor blandit iaculis.',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 40, 0, 0),
                                    child: Icon(
                                        Icons.directions_walk
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          color: Colors.white30,
                          elevation: 10,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Image.asset(
                                    'assets/images/image_list_03.png',
                                    fit: BoxFit.fill
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                      child: Text(
                                        'De Nantes à Brest à vélo',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.5,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                                            'Ut sit amet magna nec quam auctor blandit iaculis.',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 40, 0, 0),
                                    child: Icon(
                                        Icons.directions_walk
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          color: Colors.white30,
                          elevation: 10,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Image.asset(
                                    'assets/images/image_list_04.png',
                                    fit: BoxFit.fill
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                      child: Text(
                                        'Mont-Saint-Michel',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.5,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                                            'Ut sit amet magna nec quam auctor blandit iaculis.',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 40, 0, 0),
                                    child: Icon(
                                        Icons.directions_walk
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          color: Colors.white30,
                          elevation: 10,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Image.asset(
                                    'assets/images/image_list_05.png',
                                    fit: BoxFit.fill
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                      child: Text(
                                        'Randonnée à cheval',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.5,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                                            'Ut sit amet magna nec quam auctor blandit iaculis.',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 40, 0, 0),
                                    child: Icon(
                                        Icons.directions_walk
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          color: Colors.white30,
                          elevation: 10,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Image.asset(
                                    'assets/images/image_list_06.png',
                                    fit: BoxFit.fill
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                      child: Text(
                                        'Tour en kayak de mer',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.5,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                                            'Ut sit amet magna nec quam auctor blandit iaculis.',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 40, 0, 0),
                                    child: Icon(
                                        Icons.directions_walk
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          color: Colors.white30,
                          elevation: 10,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Image.asset(
                                    'assets/images/image_list_07.png',
                                    fit: BoxFit.fill
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                      child: Text(
                                        'Trecking Côtes d\'Armor',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.5,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                                            'Ut sit amet magna nec quam auctor blandit iaculis.',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 40, 0, 0),
                                    child: Icon(
                                        Icons.directions_walk
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          color: Colors.white30,
                          elevation: 10,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Image.asset(
                                    'assets/images/image_list_08.png',
                                    fit: BoxFit.fill
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                      child: Text(
                                        'Trecking Finistère sud',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.5,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                                            'Ut sit amet magna nec quam auctor blandit iaculis.',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5, 40, 0, 0),
                                    child: Icon(
                                        Icons.directions_walk
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}