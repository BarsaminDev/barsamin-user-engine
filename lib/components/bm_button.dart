import 'package:basamin/styles/global/global.style.dart';
import 'package:flutter/material.dart';

class BmButton extends StatefulWidget{

  final GestureTapCallback onPressed;
  final String text;

    BmButton({
      @required this.onPressed,
      @required this.text,
    }) : super();

  @override
  createState() => BmButtonState(
    onPressed: this.onPressed,
    text: this.text,
    show: false,
  );
}


class BmButtonState extends State {
  
  String text;
  GestureTapCallback onPressed;
  bool show = false;
  Icon icon;
  
  BmButtonState({
    @required this.onPressed,
    @required this.text,
    this.show,
  }) : super();

  void press() {
    setState(() {
      // this.show = !this.show;
      // print('asdfasdfad');
    });
    this.onPressed();
  }

  Widget build(BuildContext context) {

    return Container(
      child: ButtonTheme(
        height: 50,
        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(25)),
        child: RaisedButton(
              color: GlobalStyle.primaryColor,
              child: Text(
                this.text,
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 18,
                  fontFamily: GlobalStyle.fontChoice,
                ),
              ),
              onPressed: this.press,
            ),
      ),
    ); 
  }
}