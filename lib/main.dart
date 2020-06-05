import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: MyApp()
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(title: Text('Ask Me Anything'),),
      body: Center(
        child: Container(
          child: FlatButton(
            onPressed: () {
              setState(() {
                number=Random().nextInt(5)+1;
              });
            },
            child: Image.asset('images/ball$number.png'),
          ),
        ),
      ),
    );
  }
}
