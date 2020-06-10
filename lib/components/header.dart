import 'package:basamin/styles/global/global.style.dart';
import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  final String text;
  
  Header({
    @required this.text,
  }) : super();

  Widget build(BuildContext context) {
    return Container(
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
          ),
          margin: EdgeInsets.only(top: GlobalStyle.appBarHeight),
          child: Text(
            this.text, 
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20, 
              fontWeight: FontWeight.bold,
            ),
          ),
        );
            
  }
}