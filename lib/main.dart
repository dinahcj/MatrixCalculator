import 'package:flutter/material.dart';
import 'package:app/keypad.dart';
import 'package:app/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Matrix Calculator',
      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.purple, Colors.blue]),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
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
      ),
    );
  }
}
