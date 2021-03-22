/*import 'dart:async';

import 'package:flutter/material.dart';

void main(){
  runApp(myapp());
}*/

/*class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sample App",
      theme: ThemeData
        (primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title:Text(
            "Sample App"
          ),
        ),
        /*body: Center(
          child: MaterialButton(
            color: Colors.red,
            onPressed: () {},
            child: Text(
              "Material Button",
              style:TextStyle(
                fontSize: 20.0,
                color: Colors.white
              ),
            ),
            /*shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
            ),*/
            //shape: StadiumBorder()
            //shape: OutlineInputBorder()
            shape: Border.all(color: Colors.red[800], width: 5.0)
          ),
          /*child: FlatButton(
            splashColor: Colors.cyan,
            padding: EdgeInsets.all(10.0),
            highlightColor: Colors.green,
            onPressed: () {},
            child: Text(
              "Flat Button",
              style: TextStyle(
                ,: 24.0,
              ),
            ),
          ),*/
          /*child: RaisedButton(
            onPressed: () {},
            textColor: Colors.black,
            color: Colors.red,
            //highlightColor: Colors.green,
            //elevation: 20.0,
            //highlightElevation: 30.0,
            shape: Border.all(width: 2.0, color: Colors.black),
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            child: Text(
              "Raised Button",
              style: TextStyle(
                fontSize: 20.0
              ),
            ),
          ),*/
        ),*/
        /*body: Center(
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_a_photo,
            ),
            iconSize: 50.0,
            splashColor: Colors.green,
            tooltip: "Add A Photo",
          ),
        ),*/
       /* body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "This is a text widget",
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            RaisedButton(
            onPressed: () {},
            child: Text(
              "Raised Button",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),

          )
        ],
        ),
        ),*/
        /*body: Center(
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.end,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RaisedButton(
        onPressed: () {},
        child: Text(
          "Raised Button 1",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
            ),
        RaisedButton(
          onPressed: () {},
          child: Text(
            "Raised Button 2",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        ],
        ),
        ),*/
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: const EdgeInsets.all(20.0),
              child:Text(
                "This is a simple text",
                  style:TextStyle(
                      fontSize: 24.0,
                    ),
              ),
              ),
          Padding(padding: EdgeInsets.all(20.0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.end,
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "Raised Button 1",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "Raised Button 2",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
      ),
              FlatButton(onPressed: () {},
                  child: Text(
                    "Like me",
                    style:TextStyle(
                      fontSize: 20.0,
                    )
                  ))
            ],
          ),
        ),
      ),
    );

  }
}*/
/*class myapp extends StatefulWidget {
  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      title: "Stateful",
      home: homepage(),
    );
  }
}
class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int dataToChange=0;
  void datachange(){
    setState(() {
      dataToChange += 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "AppBar"
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: const EdgeInsets.all(20.0),
            child: Text(
              "$dataToChange",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  )
            ),
            ),
            RaisedButton(onPressed: datachange,
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              child: Text(
               "Click Me",
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                ),
              ),
              color: Colors.cyan,
            )
          ],
        ),
      ),
    );
  }
}*/
/*class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Center(
        child: Image.asset('assets/images/ch.PNG',
        //fit: BoxFit.cover,
          height: 100.0,
          width: 100.0,
        ),
      ),
    );
  }
}*/
/*class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Fields',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState(){
    super.initState();
    debugPrint("Started the Splash Screen");
    Timer(Duration(seconds: 5), finished);
  }
  void finished(){
    debugPrint("Finished...");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              /*CircularProgressIndicator(
                backgroundColor: Colors.white,
              )*/
              Text(
                "Splash\nScreen",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  fontFamily: "Cursive",
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}*/


/*class _MyHomePageState extends State<MyHomePage> {
  String myvar;
  String texttodisplay="Default";
  void showtext(){
    setState(() {
        texttodisplay=myvar;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
          Padding(padding: const EdgeInsets.all(10.0),
          child:TextField(
            onChanged: (text){
              myvar=text;
            },
            //maxLength: 20,
            //maxLines: 2,
            /*decoration: InputDecoration.collapsed(
              hintText: ""
              //hintText: 'Enter ID',
              //labelText: 'Enter ID',
              //helperText: 'Enter ID',
              //border: OutlineInputBorder(),
              //labelText: 'Enter ID',
            ),*/
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.account_box)
            ),
            style: TextStyle(
              color: Colors.red,
              fontSize: 28.0,
            ),
          )
          ),
          RaisedButton(onPressed:showtext,
              child:Text(
                "Press"
              ),
          )
        ],
      ),
    );
  }
}*/

/*import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}*/

/*import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main()=> runApp(new NavigationDrawer());

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme:new ThemeData(
          primarySwatch:Colors.deepPurple,
          primaryColor: Colors.deepPurple
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0:0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          padding: const EdgeInsets.all(0.0),
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Deep Shah"),
                accountEmail: new Text("18it117@charusat.edu.in"),
                currentAccountPicture: new CircleAvatar(
                  backgroundColor:Colors.red,
                )
            ),
            new ListTile(
              title:new Text('Page One'),
              trailing: new Icon(Icons.arrow_upward),
            ),
            new ListTile(
              title:new Text('Page two'),
              trailing: new Icon(Icons.arrow_downward),
            ),
            new ListTile(
              title:new Text('Page Close'),
              trailing: new Icon(Icons.close),
              onTap: ()=>Navigator.of(context).pop(),
            )
          ],
        ),
      ),
      body:new Center(
          child:new Text('Home Page')
      ),
    );
  }*/

/*import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main()=> runApp(new Tabbar());

class Tabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new
    MaterialApp(
      title: 'Flutter Demo',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Fixed Tabs'),
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xff5808e5),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: 'FAVORITES', icon: Icon(Icons.favorite)),
                Tab(text: 'MUSIC', icon: Icon(Icons.music_note)),
                Tab(text: 'SEARCH', icon: Icon(Icons.search)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text('FAVORITES')),
              Center(child: Text('MUSIC')),
              Center(child: Text('SEARCH')),
            ],
          ),
        ),
      ),
    );
  }
}*/
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String name, email, mobile;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Form Validation'),
        ),
        body: new SingleChildScrollView(
          child: new Container(
            margin: new EdgeInsets.all(15.0),
            child: new Form(
              key: _key,
              autovalidate: _validate,
              child: FormUI(),
            ),
          ),
        ),
      ),
    );
  }

  Widget FormUI() {
    return new Column(
      children: <Widget>[
        new TextFormField(
          decoration: new InputDecoration(hintText: 'Full Name'),
          maxLength: 32,
          validator: validateName,
          onSaved: (String val) {
            name = val;
          },
        ),
        new TextFormField(
            decoration: new InputDecoration(hintText: 'Mobile Number'),
            keyboardType: TextInputType.phone,
            maxLength: 10,
            validator: validateMobile,
            onSaved: (String val) {
              mobile = val;
            }),
        new TextFormField(
            decoration: new InputDecoration(hintText: 'Email ID'),
            keyboardType: TextInputType.emailAddress,
            maxLength: 32,
            validator: validateEmail,
            onSaved: (String val) {
              email = val;
            }),
        new SizedBox(height: 15.0),
        new RaisedButton(
          onPressed: _sendToServer,
          child: new Text('Send'),
        )
      ],
    );
  }

  String validateName(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Name is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Name must be a-z and A-Z";
    }
    return null;
  }

  String validateMobile(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Mobile Number is Required";
    } else if(value.length != 10){
      return "Mobile Number must 10 digits";
    }else if (!regExp.hasMatch(value)) {
      return "Mobile Number must be digits";
    }
    return null;
  }

  String validateEmail(String value) {
    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Email is Required";
    } else if(!regExp.hasMatch(value)){
      return "Invalid Email";
    }else {
      return null;
    }
  }

  _sendToServer() {
    if (_key.currentState.validate()) {
      // No any error in validation
      _key.currentState.save();
      print("Name $name");
      print("Mobile $mobile");
      print("Email $email");
    } else {
      // validation error
      setState(() {
        _validate = true;
      });
    }
  }
}