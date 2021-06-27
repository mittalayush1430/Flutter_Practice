// DICE APP MAIN FILE //

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.black,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int rightDice = 1;
  int leftDice = 6;

  void changeDiceFace() {
    leftDice = Random().nextInt(6) + 1;
    rightDice = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: TextButton(
            onPressed: () {
              setState(() {
                changeDiceFace();
              });
            },
            child: Image.asset('assets/dice$leftDice.png'),
          )),
          Expanded(
              child: TextButton(
            onPressed: () {
              setState(() {
                changeDiceFace();
              });
            },
            child: Image.asset('assets/dice$rightDice.png'),
          )),
        ],
      ),
    );
  }
}
