import 'package:flutter/material.dart';
import 'package:nec/routes/routes.dart';
import 'package:nec/style/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mainTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/score',
      routes: routes,
    );
  }
}

class LevelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Voyage de proximité',
            textAlign: TextAlign.center,
            style: new TextStyle(
              fontSize: 30.0,
            ),
          ),
          Text(
            'Saisir niveau de difficulté',
            textAlign: TextAlign.center,
            style: new TextStyle(
              fontSize: 15.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: new MaterialButton(
              height: 100.0,
              minWidth: double.infinity,
              color: Colors.cyanAccent,
              child: new Text(
                'Facile',
                style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () => {
                // Navigator.pushNamed(context, '/range')
              },
              splashColor: Colors.blue,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: new MaterialButton(
              height: 100.0,
              minWidth: double.infinity,
              color: Colors.lightGreen,
              child: new Text(
                'Moderé',
                style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () => {
                // Navigator.pushNamed(context, '/range')
              },
              splashColor: Colors.green,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: new MaterialButton(
              height: 100.0,
              minWidth: double.infinity,
              color: Colors.yellowAccent,
              child: new Text(
                'Sportif',
                style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              onPressed: () => {
                // Navigator.pushNamed(context, '/range')
              },
              splashColor: Colors.yellow,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: new MaterialButton(
              height: 100.0,
              minWidth: double.infinity,
              color: Colors.orangeAccent,
              child: new Text(
                'Difficile',
                style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              onPressed: () => {
                // Navigator.pushNamed(context, '/range')
              },
              splashColor: Colors.deepOrange,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: new MaterialButton(
              height: 100.0,
              minWidth: double.infinity,
              color: Colors.redAccent,
              child: new Text(
                'Extrême',
                style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              onPressed: () => {
                // Navigator.pushNamed(context, '/range')
              },
              splashColor: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

class RangePage extends StatefulWidget {
  RangePageState createState() => RangePageState();
}

class RangePageState extends State<RangePage> {
  int _value = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Voyage de proximité',
              textAlign: TextAlign.center,
              style: new TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              'Saisir rayon',
              textAlign: TextAlign.center,
              style: new TextStyle(
                fontSize: 15.0,
              ),
            ),
            Container(
              child: Slider(
                value: _value.toDouble(),
                min: 1.0,
                max: 30.0,
                activeColor: Colors.cyan,
                inactiveColor: Colors.black,
                onChanged: (double newValue) {
                  setState(() {
                    _value = newValue.round();
                  });
                },
              ),
            ),
            Container(
                height: 550,
                color: Colors.grey,
                child: Center(
                  child :Text(
                      'MAPS'
                  ),
                )
            ),
          ]
      ),
    );
  }
}

class ListPage extends StatefulWidget {
  // ListPageState createState() => ListPageState();
  ListPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  ListPageState createState() => new ListPageState();
}

class ListPageState extends State<ListPage> {
  TextEditingController editingController = TextEditingController();

  final duplicateItems = List<String>.generate(20, (i) => "Item $i");
  var items = List<String>();

  @override
  void initState() {
    items.addAll(duplicateItems);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicateItems);
    if(query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if(item.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(duplicateItems);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(''),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  filterSearchResults(value);
                },
                controller: editingController,
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
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${items[index]}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page de details"),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            // Navigator.pushNamed(context, '/list');
          },
          child: Text('Go back to the List!'),
        ),
      ),
    );
  }
}