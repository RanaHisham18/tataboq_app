import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:tataboq_app/result.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Identical Game'),
        backgroundColor: Colors.indigo,
      ),
      body: ImageHolder(),
    ),
  ));
}

class ImageHolder extends StatefulWidget {
  const ImageHolder({super.key});

  @override
  State<ImageHolder> createState() => _ImageHolderState();
}

class _ImageHolderState extends State<ImageHolder> {
  int leftImageNumber = 1;
  int rightImageNumber = 2;

  //function to generate random number
  void changeImageNumber() {
    leftImageNumber = Random().nextInt(8) + 1;
    rightImageNumber = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Welcome to the game!",
          style: TextStyle(color: Colors.indigo, fontSize: 30),
        ),
        Container(
          padding: EdgeInsets.all(40),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Image.asset('images/image-$leftImageNumber.png'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Image.asset('images/image-$rightImageNumber.png'),
                ),
              ),
            ],
          ),
        ),
        MaterialButton(
            padding: EdgeInsets.all(20),
            color: Colors.deepPurpleAccent,
            child: const Text("Click Me"),
            onPressed: () {
              setState(() {
                changeImageNumber();
                if (leftImageNumber == rightImageNumber) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                }
              });
            })
      ],
    );
  }
}
