import 'package:flutter/material.dart';
class ThirdPage extends StatelessWidget {
  final String hintText;
  // final Function validator;
  // final Function onSaved;
  final bool isPassword;
  final bool isEmail;
  
  ThirdPage({
    this.hintText,
    // this.validator,
    // this.onSaved,
    this.isPassword = false,
    this.isEmail = false,
  });

  void _onPressSubmit() {
    print('submit the form');
    print(nameController.text);
    print(emailController.text);
    print(phoneController.text);
    print(nationalityController.text);
  }

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final nationalityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Application Form'),
      ),
      body: Column(
        children: <Widget> [
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Name'
              ),
              controller: nameController,
            ),
          ),

          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Email'
              ),
              controller: emailController,
            ),
          ),

          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Phone Number'
              ),
              controller: phoneController,
            ),
          ),

          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Nationality'
              ),
              controller: nationalityController,
            ),
          ),

          /*
          * @author Yinghan Wang
          * @date
          * @
          */
          RaisedButton(
            child: Text('Submit'),
            onPressed: _onPressSubmit,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
                content: Text('validating in progress'),
              );
            },
          );
        },
        tooltip: 'Show me the value!',
        child: Icon(Icons.text_fields),
      ),
    );
    
  }
}

