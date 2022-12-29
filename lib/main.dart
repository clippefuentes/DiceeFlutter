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
  const DicePage({Key key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceLeftNumber = 1;
  int diceRightNumber = 1;

  void generateNumber() {
    setState(() {
      diceLeftNumber = Random().nextInt(6) + 1;
      diceRightNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              child: TextButton(
                child: Image.asset('images/dice$diceLeftNumber.png'),
                onPressed: () {
                  generateNumber();
                },
              ), 
              padding: EdgeInsets.all(16.0),
            ),
          ),
          Expanded(
            child: Padding(
              child: TextButton(
                child: Image.asset('images/dice$diceRightNumber.png'),
                onPressed: () {
                  generateNumber();
                },
              ),
              padding: EdgeInsets.all(16.0),
            )
          ),
        ],
    ));
  }
}