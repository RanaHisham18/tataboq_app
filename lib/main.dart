import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:developer';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Identical Test'),
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
        leftImageNumber == rightImageNumber ? 'Congrats, You won!'
            : 'Try Again',
      style: TextStyle(color: Colors.indigo, fontSize: 50),
    ),
    Row(
    children: [
    Expanded(
    child: Padding(
    padding: EdgeInsets.all(15),
    // ignore: prefer_const_constructors
    child: TextButton(
    onPressed: () {
    setState(() {
    changeImageNumber();
    });

    },
    child: Image.asset('images/image-$leftImageNumber.png'),
    ),
    ),
    ),

    Expanded(
    child: TextButton(
    onPressed: () {
    setState(() {
    changeImageNumber();
    });
    },
    child: Padding(    padding: EdgeInsets.all(15),
        child: Image.asset('images/image-$rightImageNumber.png')),
    ),
    ),
    ],
    ),
    ],
    );
    }
}

