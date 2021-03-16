import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practical 7',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Practical 7'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
// ignore: deprecated_member_use
            FlatButton(
              splashColor: Colors.red,
              color: Colors.green,
              textColor: Colors.white,
              child: Text(
                'CardView',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
            ),
// ignore: deprecated_member_use
            FlatButton(
              splashColor: Colors.red,
              color: Colors.green,
              textColor: Colors.white,
              child: Text(
                'WebView',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WebViewExample()),
                );
              },
            ),
// ignore: deprecated_member_use
            FlatButton(
              splashColor: Colors.red,
              color: Colors.green,
              textColor: Colors.white,
              child: Text(
                'TabbedView',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
// ignore: deprecated_member_use
            FlatButton(
              splashColor: Colors.red,
              color: Colors.green,
              textColor: Colors.white,
              child: Text(
                'GridView',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gridview()),
                );
              },
            ),
// ignore: deprecated_member_use
            FlatButton(
              splashColor: Colors.red,
              color: Colors.green,
              textColor: Colors.white,
              child: Text(
                'ListView',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListViewBuilder()),
                );
              },
            ),
// ignore: deprecated_member_use
            FlatButton(
              splashColor: Colors.red,
              color: Colors.green,
              textColor: Colors.white,
              child: Text(
                'FragmentView',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage1()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}
class HomePage1 extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("18IT117", Icons.rss_feed),
    new DrawerItem("WCMC", Icons.local_pizza),
    new DrawerItem("Deep Shah", Icons.info)
  ];
  @override
  State<StatefulWidget> createState() {
    return new HomePage1State();
  }
}
class HomePage1State extends State<HomePage1> {
  int _selectedDrawerIndex = 0;
  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new Text("18IT117");
      case 1:
        return new Text("WCMC");
      case 2:
        return new Text("Deep Shah");
      default:
        return new Text("Error");
    }
  }
  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }
  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(
          new ListTile(
            leading: new Icon(d.icon),
            title: new Text(d.title),
            selected: i == _selectedDrawerIndex,
            onTap: () => _onSelectItem(i),
          )
      );
    }
    return new Scaffold(
      appBar: new AppBar(
// here we display the title corresponding to the fragment
// you can instead choose to have a static title
        title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("18IT117_Deep_Shah"), accountEmail: null),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
class WebViewExample extends StatefulWidget {
  @override
  WebViewExampleState createState() => WebViewExampleState();
}
class WebViewExampleState extends State<WebViewExample> {
  @override
  void initState() {
// super.initState();
// Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://www.youtube.com',
    );
  }
}
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CardView"),
        ),
        body: Center(
          child: Column(
            children: [
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Text(
                    "Hello",
                    textScaleFactor: 1.2,
                  )),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Text(
                    "Hello 1",
                    textScaleFactor: 1.2,
                  )),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Text(
                    "Hello 2",
                    textScaleFactor: 1.2,
                  )),
            ],
          ),
        ));
  }
}
class ListViewBuilder extends StatelessWidget {
  var num_list = ["Deep","18IT117","IT","CSPIT","KDPIT"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text("ListView")
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context,int index){
            return ListTile(
                leading: Icon(Icons.list),
                trailing: Text("Index Number $index",
                  style: TextStyle(
                      color: Colors.green,fontSize: 15),),
                title:Text("Hello this is ${num_list[index]}")
            );
          }
      ),
    );
  }
}
class Gridview extends StatelessWidget {
  var num_list = ["Deep","18IT117","IT","CSPIT","KDPIT"];
  @override
  Widget build(BuildContext context) {
    final title = 'Grid List';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView'),
        ),
        body: GridView.count(
// Create a grid with 2 columns. If you change the scrollDirection to
// horizontal, this produces 2 rows.
          crossAxisCount: 2,
// Generate 100 widgets that display their index in the List.
          children: List.generate(5, (index) {
            return Center(
              child: Text(
                "Hello this is ${num_list[index]}",
                style: Theme.of(context).textTheme.headline5,
              ),
            );
          }),
        ),
      ),
    );
  }
}
class HomePage extends StatelessWidget {
  List<Widget> containers = [
    Container(
      color: Colors.pink,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.deepPurple,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabbedView'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: '2018',
              ),
              Tab(
                text: '2019',
              ),
              Tab(
                text: '2020',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: containers,
        ),
      ),
    );
  }
}