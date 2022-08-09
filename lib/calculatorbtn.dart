import 'package:flutter/material.dart';

class CalculatorBtn extends StatelessWidget {
  final String text;
  final int colo;
  final int fillcolor;
  final double widthsize;
  final Function callback;

  CalculatorBtn(this.text, this.callback, this.colo, this.fillcolor, this.widthsize);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      height: 70,
      width: widthsize,
      child: FlatButton(
        onPressed: ()=> callback(text),
        color: Color(fillcolor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        child: Text(text,
        style: TextStyle(
          color: Color(colo),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
    );
  }
}
