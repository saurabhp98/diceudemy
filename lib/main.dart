import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDicenum = 1;
  int rightDicenum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              // ignore: sdk_version_set_literal
              onPressed: () => {
                setState(() {
                  leftDicenum = Random().nextInt(6) + 1;
                  print(leftDicenum);
                }),
              },
              child: Image.asset('./images/dice${leftDicenum}.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              // ignore: sdk_version_set_literal
              onPressed: () => {
                setState(() {
                  rightDicenum = Random().nextInt(6) + 1;
                  print(rightDicenum);
                }),
              },
              child: Image.asset('./images/dice$rightDicenum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
