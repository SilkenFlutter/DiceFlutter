import 'dart:math';

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
  int numeroDadoIzquierdo = 1;
  int numeroDadoDerecho = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                  onPressed: (){
                    setState(() {
                      numeroDadoIzquierdo=GetRandomNumber();
                    });
                  },
                  child: Image.asset('images/dice$numeroDadoIzquierdo.png')
              )
          ),
          Expanded(
            child: FlatButton(
                onPressed: (){
                  setState(() {
                    numeroDadoDerecho= GetRandomNumber();
                  });
                },
                child: Image.asset('images/dice$numeroDadoDerecho.png')
            ),
          ),
        ],
      ),
    );
  }
}

int GetRandomNumber(){
  Random rng = Random();
  var num = rng.nextInt(6)+1;
  return num;
}
