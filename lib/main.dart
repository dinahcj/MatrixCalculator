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
                  color: Colors.blue[200],
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
  final Widget screenInputArea = Placeholder();

  final Widget screenOutputArea = Placeholder();

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
          Expanded(
            //1
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Placeholder(
                      fallbackHeight: 10,
                      fallbackWidth: 10,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Placeholder(
                      fallbackHeight: 10,
                      fallbackWidth: 10,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Placeholder(
                      fallbackHeight: 10,
                      fallbackWidth: 10,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Placeholder(
                      fallbackHeight: 10,
                      fallbackWidth: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            //2
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.purple[200],
                    child: Placeholder(
                      fallbackHeight: 10,
                      fallbackWidth: 10,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.purple[200],
                    child: Placeholder(
                      fallbackHeight: 10,
                      fallbackWidth: 10,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.purple[200],
                    child: Placeholder(
                      fallbackHeight: 10,
                      fallbackWidth: 10,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Placeholder(
                      fallbackHeight: 10,
                      fallbackWidth: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.purple[200],
                    child: Placeholder(
                      fallbackHeight: 10,
                      fallbackWidth: 10,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.purple[200],
                    child: Placeholder(
                      fallbackHeight: 10,
                      fallbackWidth: 10,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.purple[200],
                    child: Placeholder(
                      fallbackHeight: 10,
                      fallbackWidth: 10,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Placeholder(
                      fallbackHeight: 10,
                      fallbackWidth: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.purple[200],
                    child: Placeholder(
                      fallbackHeight: 10,
                      fallbackWidth: 10,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.purple[200],
                    child: Placeholder(
                      fallbackHeight: 10,
                      fallbackWidth: 10,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.purple[200],
                    child: Placeholder(
                      fallbackHeight: 10,
                      fallbackWidth: 10,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Placeholder(
                      fallbackHeight: 10,
                      fallbackWidth: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.grey,
                    child: Placeholder(
                      fallbackHeight: 10,
                      fallbackWidth: 10,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey,
                    child: Placeholder(
                      fallbackHeight: 10,
                      fallbackWidth: 10,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Placeholder(
                      fallbackHeight: 10,
                      fallbackWidth: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
