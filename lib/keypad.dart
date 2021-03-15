import 'package:flutter/material.dart';

class Keypad extends StatelessWidget {
  // Dispays keypad numbers and operations buttons

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: OperatorButton('CLEAR')),
                Expanded(child: OperatorButton('AT')),
                Expanded(child: OperatorButton('DET')),
                Expanded(child: OperatorButton('INV')),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: LiteralButton('7')),
                Expanded(child: LiteralButton('8')),
                Expanded(child: LiteralButton('9')),
                Expanded(child: OperatorButton('+')),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: LiteralButton('4')),
                Expanded(child: LiteralButton('5')),
                Expanded(child: LiteralButton('6')),
                Expanded(child: OperatorButton('-')),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: LiteralButton('1')),
                Expanded(child: LiteralButton('2')),
                Expanded(child: LiteralButton('3')),
                Expanded(child: OperatorButton('*')),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: LiteralButton('0')),
                Expanded(child: LiteralButton('1')),
                Expanded(child: LiteralButton('.')),
                Expanded(child: OperatorButton('=')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class LiteralButton extends StatelessWidget {
  //Buttons 0-9 and "."
  String buttonLabel;

  LiteralButton(buttonLabel) {
    this.buttonLabel = buttonLabel;
  }

  @override
  Widget build(BuildContext context) {
    //Color customColor = const Color(0xFFe896ea);

    return Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      padding: const EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        //color: Colors.white,
        border: Border.all(
          color: Colors.grey[500],
          width: 1,
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      child: TextButton(
        child: Text(
          this.buttonLabel,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[400],
          ),
        ),
        //onPressed: ,
      ),
    );
  }
}

// ignore: must_be_immutable
class OperatorButton extends StatelessWidget {
  String buttonLabel;
  var buttonOperation;

  OperatorButton(buttonLabel) {
    this.buttonLabel = buttonLabel;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      padding: const EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        //color: Colors.white,
        border: Border.all(
          color: Colors.grey[500],
          width: 1,
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      child: TextButton(
        child: Text(
          this.buttonLabel,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[400],
          ),
        ),
      ),
    );
  }
}
