import 'package:flutter/material.dart';
import 'package:nec/style/theme.dart';
import 'package:nec/widget/drawer.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final levelIndicator = Container(
      child: Container(
        child: LinearProgressIndicator(
          backgroundColor: Colors.white,
          valueColor: AlwaysStoppedAnimation(Colors.green)
        ),
      ),
    );

    final locationInfo = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Normandie',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white
          ),
        ),
        Container(
          width: 90.0,
          child: new Divider(color: Colors.white),
        ),
        SizedBox(height: 10.0),
        Text(
          'Traversée baie Mont-Saint-Michel',
          style: TextStyle(color: Colors.white, fontSize: 35.0),
        ),
        SizedBox(height: 50.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: levelIndicator
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Moderé',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                )
              )
            ),
            Expanded(
              flex: 1,
              child: Icon(
                Icons.directions_walk,
                color: Colors.white,
                size: 40.0,
              ),
            )
          ],
        ),
      ],
    );

    final topContent = Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10.0),
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/images/detail_image.png"),
              fit: BoxFit.cover,
            ),
          )
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
          padding: EdgeInsets.all(40.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color.fromRGBO(37, 150, 190, 0.5)
          ),
          child: Center(
            child: locationInfo,
          ),
        ),
      ],
    );

    final description = Text(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
      'Phasellus a cursus nulla, nec vestibulum ligula. '
      'Curabitur at massa pellentesque felis aliquet porta vestibulum vel velit. '
      'Morbi iaculis nunc velit, eget rhoncus nisl lacinia sit amet. '
      'Vestibulum arcu ligula, gravida vehicula lobortis nec, aliquam et lectus. '
      'Nam at nibh lectus. Aliquam fringilla ut ex quis gravida.',
      style: TextStyle(
        fontSize: 18.0
      ),
      textAlign: TextAlign.justify,
    );

    final submitButton = Container(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.bottomCenter,
      child: MaterialButton(
        onPressed: () => {},
        color: Colors.cyan,
        child: Text(
          "Go !",
          style: TextStyle(
            color: Colors.white
          )
        ),
      )
    );

    final bottomContent = Container(
      padding: EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          children: <Widget>[
            description,
            submitButton
          ],
        ),
      ),
    );

    return MaterialApp(
      theme: mainTheme,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          drawer: drawer(context),
          body: Column(
            children: <Widget>[
              topContent,
              bottomContent
            ],
          ),
        ),
      ),
    );
  }
}