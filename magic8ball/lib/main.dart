import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int RandomNum = 1;

  void Pressed() {
    setState(() {
      RandomNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
            Pressed();
            print("Button Pressed");
          },
          child: Image(
            image: AssetImage('images/ball$RandomNum.png'),
          ),
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
