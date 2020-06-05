import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(home: MyApp()),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(

            child: FlatButton(
              onPressed: () {
                setState(() {
                  number = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$number.png'),
            ),
          ),
          Container(
          width: 200.0,
            margin: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
            child: RaisedButton(child: Text('Ask',style: TextStyle(fontSize: 18.0),),
              onPressed: () {
                print('Raised button pressed');
              },
            ),
          )
        ],
      ),
    );
  }
}
