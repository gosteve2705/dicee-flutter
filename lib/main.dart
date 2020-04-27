import 'package:flutter/cupertino.dart';
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

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image(
                image: AssetImage('images/dice$leftDiceNum.png'),
              ),
              onPressed: () {
                print('left button pressed');
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset(
                'images/dice$rightDiceNum.png',
              ),
              onPressed: () {
                print('Right button pressed');
              },
            ),
          ),
        ],
      ),
    );
  }
}
