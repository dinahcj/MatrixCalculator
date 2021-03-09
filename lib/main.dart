import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //Root

  final Widget screenArea = Placeholder();

  final Widget keypadArea = Placeholder();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Matrix Calculator',
      /* theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ), */
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Matrix Calculator',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.purple[100],
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                    margin: EdgeInsets.all(10),
                    constraints: BoxConstraints.expand(),
                    //make screen width of device
                    color: Colors.grey[400],
                    child: Screen()),
              ),
              Expanded(
                flex: 4,
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
  final Widget screenInputArea = Container(color: Colors.grey[200]);

  final Widget screenOutputArea = Container(color: Colors.grey[200]);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
                constraints: BoxConstraints.expand(),
                color: Colors.pink[100],
                child: screenInputArea),
          ),
          Expanded(
            flex: 3,
            child: Container(
                constraints: BoxConstraints.expand(),
                color: Colors.pink[200],
                child: screenOutputArea),
          ),
        ],
      ),
    );
  }
}

class Keypad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          KeypadRow(),
          KeypadRow(),
          KeypadRow(),
          KeypadRow(),
          Expanded(
            child: Row(
              children: [
                ExpandedTempWidget(), //0
                ExpandedTempWidget(), //
                ExpandedTempWidget(), //.
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class KeypadRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          ExpandedTempWidget(),
          ExpandedTempWidget(),
          ExpandedTempWidget(),
          ExpandedTempWidget(),
        ],
      ),
    );
  }
}

class ExpandedTempWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Button(),
    );
  }
}

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[100],
          width: 2,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Colors.pink[50],
      ),
      child: Center(
        child: (Text('1')),
      ),
    );
  }
}
