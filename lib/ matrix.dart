import 'package:flutter/material.dart';

// Define a custom Form widget.
class MatrixForm extends StatefulWidget {
  @override
  MatrixFormState createState() {
    return MatrixFormState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class MatrixFormState extends State<MatrixForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _newMatrix = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _newMatrix,
      child: Center(
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
