import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  add(var a, var b) {
    return a + b;
  }

  subtract(var a, var b) {
    return a - b;
  }

  multiply(var a, var b) {
    return a * b;
  }

  transpose(var a, var b) {}

  inverse(var a, var b) {}

  determinant(var a, var b) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(''),
    );
  }
}
