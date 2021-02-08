import 'package:flutter/material.dart';

void main(){
  runApp(myapp());
}

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
class myapp extends StatefulWidget {
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
}

