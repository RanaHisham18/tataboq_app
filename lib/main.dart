import 'package:flutter/material.dart';

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

class ImageHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Try Again',
          style: TextStyle(color: Colors.indigo, fontSize: 50),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15),
                // ignore: prefer_const_constructors
                child: TextButton(
                  onPressed: (){},
                  child: Image(
                    image: AssetImage('images/image-1.png'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Image(image: AssetImage('images/image-1.png')),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
