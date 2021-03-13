import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Matrix Calculator',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                    constraints: BoxConstraints.expand(), child: Screen()),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.all(25),
                  constraints: BoxConstraints.expand(),
                  child: Center(child: Keypad()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Screen extends StatelessWidget {
  /* Top half of app is the calculator screen 
    * When clearing Screen should new instance be 
    * generated & rendered? 
  */

  final Widget screenInputArea = Container(
    // Displays the values input by the user at the top
    padding: EdgeInsets.only(top: 7, right: 30, left: 30, bottom: 7),
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          width: 0.7,
          color: Colors.grey[100],
        ),
      ),
    ),
    child: Matrix(),
  );

  final Widget screenOutputArea = Container(
    // Displays the solution to the input operation sequence
    padding: EdgeInsets.only(top: 7, right: 30, left: 30, bottom: 7),
    child: Center(
      child: Container(
        child: OutputSolution('0'),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.only(top: 50),
              constraints: BoxConstraints.expand(),
              child: screenInputArea,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              constraints: BoxConstraints.expand(),
              child: screenOutputArea,
            ),
          ),
        ],
      ),
    );
  }
}

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
                Expanded(child: OperatorButton('NEXT')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OutputSolution extends StatelessWidget {
  String output;

  OutputSolution(String output) {
    this.output = output;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      child: Text(
        this.output,
        style: TextStyle(
          color: Colors.black,
          fontSize: 35,
        ),
      ),
    );
  }
}

class InputValue extends StatelessWidget {
  String input;

  InputValue(String input) {
    this.input = input;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      child: Text(
        this.input,
        style: TextStyle(
          color: Colors.black,
          fontSize: 25,
        ),
      ),
    );
  }
}

class Matrix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.bottomRight,
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  MatrixElement(),
                  MatrixElement(),
                  MatrixElement(),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  MatrixElement(),
                  MatrixElement(),
                  MatrixElement(),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  MatrixElement(),
                  MatrixElement(),
                  MatrixElement(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MatrixElement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.blue[900],
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class LiteralButton extends StatelessWidget {
  //Buttons 0-9 and "."
  String buttonLabel;
  var buttonValue;

  LiteralButton(buttonLabel) {
    this.buttonLabel = buttonLabel;
  }

  @override
  Widget build(BuildContext context) {
    Color customColor = const Color(0xFFe896ea);

    return Container(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: TextButton(
        child: Text(
          this.buttonLabel,
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(customColor),
          shadowColor: MaterialStateProperty.all<Color>(Colors.grey[100]),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
      ),
    );
  }
}

class OperatorButton extends StatelessWidget {
  //Buttons 0-9 and "."
  String buttonLabel;
  var buttonOperation;

  OperatorButton(buttonLabel) {
    this.buttonLabel = buttonLabel;
  }

  @override
  Widget build(BuildContext context) {
    Color customColor = const Color(0xFF42A5F5);

    return Container(
      //margin: EdgeInsets.all(2),
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: TextButton(
        child: Text(
          this.buttonLabel,
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(customColor),
          shadowColor: MaterialStateProperty.all<Color>(Colors.grey[100]),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
      ),
    );
  }
}
