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
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                    //margin: EdgeInsets.all(10),
                    constraints: BoxConstraints.expand(),
                    child: Screen()),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(
                    bottom: 30,
                    left: 10,
                    right: 10,
                  ),
                  constraints: BoxConstraints.expand(),
                  child: Keypad(),
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
    child: InputValue('0'),
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
            flex: 2,
            child: Container(
              constraints: BoxConstraints.expand(),
              child: screenInputArea,
            ),
          ),
          Expanded(
            flex: 4,
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
                ButtonValue('CLEAR'),
                ButtonValue('AT'),
                ButtonValue('DET'),
                ButtonValue('INV'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ButtonValue('7'),
                ButtonValue('8'),
                ButtonValue('9'),
                ButtonValue('+'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ButtonValue('4'),
                ButtonValue('5'),
                ButtonValue('6'),
                ButtonValue('-'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ButtonValue('1'),
                ButtonValue('2'),
                ButtonValue('3'),
                ButtonValue('*'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ButtonValue('0'),
                ButtonValue('.'),
                ButtonValue('='),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonValue extends StatelessWidget {
  String textValue;

  ButtonValue(String textValue) {
    this.textValue = textValue;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Button(
        Text(
          this.textValue,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  Widget buttonValue;

  Button(Widget buttonValue) {
    this.buttonValue = buttonValue;
  }

  onTap() => {};

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[100],
          width: 0.9,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Center(
        child: this.buttonValue,
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
          color: Colors.white,
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
          color: Colors.white,
          fontSize: 25,
        ),
      ),
    );
  }
}
