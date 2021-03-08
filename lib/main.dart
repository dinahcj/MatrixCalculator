import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //Root

  final Widget screenArea = Text(
    'I/O Screen!',
    style: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w300,
    ),
  );

  final Widget keypadArea = Container(
      child: Text(
    'Keypad',
    style: TextStyle(
      fontSize: 30,
    ),
  ));

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
          title: Text('Matrix Calculator'),
        ),
        body: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.grey[200],
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child:
                          Container(color: Colors.grey[300], child: screenArea),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        color: Colors.blue[500],
                        child: keypadArea,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.grey[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State.
  // Fields in a Widget subclass are ??
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.

    return (Text('test'));
  }
} */
