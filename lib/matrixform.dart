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
  final myController = TextEditingController();

  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _newMatrix,
      child: Center(
        child: Container(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    MatrixElement(),
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
                    MatrixElement(),
                  ],
                ),
              ),
              Expanded(
                child: FloatingActionButton(
                  backgroundColor: Colors.blue[700],
                  onPressed: () {
                    return showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          // Retrieve the text the user has entered by using the
                          // TextEditingController.
                          content: Text(myController.text),
                        );
                      },
                    );
                  },
                  child: Icon(Icons.add),
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
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.grey[400],
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2),
            borderSide: BorderSide(
              color: Colors.grey[100],
              width: 0.2,
            ),
          ),
        ), //controller: myController,
      ),
    );
  }
}
