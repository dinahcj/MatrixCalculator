import 'package:flutter/material.dart';
import 'package:app/ matrix.dart';

class Screen extends StatelessWidget {
  /* When clearing Screen should new instance be 
  * generated & rendered? 
  */

  final Widget screenInputArea = Container(
    // Displays the values input by the user at the top
    padding: EdgeInsets.only(top: 7, right: 30, left: 30, bottom: 7),
    child: MatrixForm(),
  );

  final Widget screenOutputArea = Container(
    // Displays the solution to the input operation sequence
    padding: EdgeInsets.only(top: 7, right: 30, left: 30, bottom: 7),
    child: Center(
      child: Container(
        /* will be changed to display solution */
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

// ignore: must_be_immutable
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
        /** will be changed to stateful widget to render solutions **/
        this.output,
        style: TextStyle(
          color: Colors.grey[100],
          fontSize: 35,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
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
