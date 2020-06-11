import 'package:basamin/styles/global/global.style.dart';
import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  final String text;
  
  Header({
    @required this.text,
  }) : super();

  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 1,
          height: 40,
          decoration: BoxDecoration(
            // color: Colors.red,
          ),
          margin: EdgeInsets.only(top: GlobalStyle.appBarHeight),
          child: Text(
            this.text, 
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: GlobalStyle.fontChoice,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        )
      ],
    ); 
  }
}