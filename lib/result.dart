import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Identical Game'),
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: Text(
            "Congrats, You won!",
            style: TextStyle(fontSize: 35, color: Colors.deepPurple),
          ),
        ),
      ),
    );
  }
}