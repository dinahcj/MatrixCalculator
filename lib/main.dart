import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Matrix Calculator',
      /* theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ), */
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                    //margin: EdgeInsets.all(10),
                    constraints: BoxConstraints.expand(),
                    //make screen width of device
                    color: Colors.grey[400],
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
  //When clearing Screen should new instance be generated & rendered?
  final Widget screenInputArea = Container(
    decoration: BoxDecoration(
      color: Colors.grey[200],
      border: Border(
        bottom: BorderSide(
          //                   <--- left side
          width: 1.0,
          color: Colors.grey[400],
        ),
      ),
    ),
    child: Center(
      child: Container(
        margin: EdgeInsets.only(top: 90, left: 300),
        child: Text(
          "0",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ),
    ),
  );

  final Widget screenOutputArea = Container(
    color: Colors.grey[200],
    child: Center(
      child: Container(
        margin: EdgeInsets.only(top: 185, left: 300),
        child: Text(
          "0",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
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
                color: Colors.pink[100],
                child: screenInputArea),
          ),
          Expanded(
            flex: 4,
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
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                ButtonContainer(
                  Text('AC'),
                ), //0
                ButtonContainer(
                  Text('T'),
                ), //.
                ButtonContainer(
                  Text('Det'),
                ),
                ButtonContainer(
                  Text('Inv'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ButtonContainer(
                  Text('7'),
                ), //0
                ButtonContainer(
                  Text('8'),
                ), //.
                ButtonContainer(
                  Text('9'),
                ),
                ButtonContainer(
                  Text('+'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ButtonContainer(
                  Text('4'),
                ), //0
                ButtonContainer(
                  Text('5'),
                ), //.
                ButtonContainer(
                  Text('6'),
                ),
                ButtonContainer(
                  Text('-'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ButtonContainer(
                  Text('1'),
                ), //0
                ButtonContainer(
                  Text('2'),
                ), //.
                ButtonContainer(
                  Text('3'),
                ),
                ButtonContainer(
                  Text('*'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ButtonContainer(
                  Text('0'),
                ), //0
                ButtonContainer(
                  Text('.'),
                ), //.
                ButtonContainer(
                  Text('='),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonContainer extends StatelessWidget {
  Widget textValue;

  ButtonContainer(Widget textValue) {
    this.textValue = textValue;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Button(this.textValue),
    );
  }
}

class Button extends StatelessWidget {
  Widget buttonValue;

  Button(Widget buttonValue) {
    this.buttonValue = buttonValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[100],
          width: 2,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Colors.blue[100],
      ),
      child: Center(
        child: this.buttonValue,
      ),
    );
  }
}
