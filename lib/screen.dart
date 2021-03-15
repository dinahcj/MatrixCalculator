import 'package:flutter/material.dart';
import 'package:app/ matrix.dart';

class Screen extends StatelessWidget {
  /* When clearing Screen should new instance be 
  * generated & rendered? 
  */

  final Widget screenInputArea = Container(
    // Displays the form where user inputs matrix values
    padding: EdgeInsets.only(top: 7, right: 30, left: 30, bottom: 7),
    child: MatrixForm(),
  );

  final Widget screenOutputArea = Container(
    // Displays the solution to the operation sequence
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
  // Output Result of Calculations - create Calculator class to handle operations
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
          color: Colors.grey[100],
          fontSize: 35,
        ),
      ),
    );
  }
}
