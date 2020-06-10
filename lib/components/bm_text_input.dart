import 'package:basamin/styles/global/global.style.dart';
import 'package:flutter/material.dart';


class BmTextInput extends StatelessWidget {
  
  final String hintText;
  final String labelText;
  final bool obscureText;
  
  BmTextInput({
    this.hintText,
    @required this.labelText,
    this.obscureText = false,
  }) : super();

  Widget build(BuildContext context) {
    return TextField(
      obscureText: this.obscureText,
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: GlobalStyle.lightGrey,
          ),
        ),
        hintText: this.hintText,
        labelText: this.labelText,
        labelStyle: new TextStyle(color: const Color(0xFF424242)),
      ),
    );
  }
}