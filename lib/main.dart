import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              child: Image.asset('images/dice1.png'),
              padding: EdgeInsets.all(16.0),
            ),
          ),
          Expanded(
            child: Padding(
              child: Image.asset('images/dice2.png'),
              padding: EdgeInsets.all(16.0),
            )
          ),
        ],
    ));
  }
}
