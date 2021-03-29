import 'package:flutter/material.dart';
import 'package:nec/score/widget/EcoTab.dart';
import 'package:nec/score/widget/TrophyTab.dart';
import 'package:nec/score/widget/WorldTab.dart';
import 'package:nec/widget/drawer.dart';

class Score extends StatefulWidget {
  @override
  _ScoreState createState() => _ScoreState();
}

class _ScoreState extends State<Score> {

  int showTab = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
            ),
            drawer: drawer(context),
            body: Column(
              children: [
                Text("Score", style: Theme.of(context).textTheme.headline1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    customIcon("assets/icons/leaf-icon.png", 1),
                    customIcon("assets/icons/trophy-icon.png", 2),
                    customIcon("assets/icons/globe-icon.png", 3),
                  ],
                ),
                customTab(showTab),
              ],
            )
        ),
      ),
    );
  }

  Widget customIcon(String iconPath, int tab) {
    return GestureDetector(
      onTapUp: (_) {
        this.setState(() {
          this.showTab = tab;
        });
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(iconPath)
            )
        ),
      ),
    );
  }

  Widget customTab(int tab) {
    if (tab == 1)
      return EcoTab(context);
    if (tab == 2)
      return TrophyTab(context);
    if (tab == 3)
      return WorldTab(context);
    else return Text("There is an error here ! D:");
  }
}
