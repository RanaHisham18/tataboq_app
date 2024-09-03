import 'dart:math';

import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
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
    return Column();
  }
}
