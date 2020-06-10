import 'package:basamin/styles/global/global.style.dart';
import 'package:flutter/material.dart';


class BmButton extends StatelessWidget {
  
  final String text;
  final GestureTapCallback onPressed;
  
  BmButton({
    @required this.onPressed,
    @required this.text,
  }) : super();

  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 300,
      height: 50,
      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(25)),
      child: RaisedButton(
        color: GlobalStyle.primaryColor,
        child: Text(
          this.text,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        onPressed: this.onPressed,
      ),              
    );
  }
}