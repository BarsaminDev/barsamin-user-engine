/*
 * @author Yinghan Wang
 * @date
 * @
 */

import 'dart:async';

import 'package:basamin/components/bm_button.dart';
import 'package:basamin/styles/global/global.style.dart';
import 'package:division/division.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:basamin/styles/pages/intro-page.style.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class Intro extends StatelessWidget {

  Intro({
    Key key,
  }) : super(key: key);

  

  /*
   * @author Yinghan Wang
   * @date
   * @do this before everything
   */
  void beforeBuild(context) async{
    await FlutterStatusbarcolor.setStatusBarColor(GlobalStyle.lightGrey);
    await FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    // Future.delayed(const Duration(seconds: 3), () {
    //   return Navigator.of(context).pushNamed(
    //     '/register', 
    //     arguments: 'come from the intro page to the first page',
    //   ); 
    // });

  }

  /*
   * @author Yinghan Wang
   * @date
   * @override
   */
  Widget build(BuildContext context) {
    this.beforeBuild(context);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            // width: MediaQuery.of(context).size.width * 1,
            // height: MediaQuery.of(context).size.height * 1,
            child: Container(
              color: GlobalStyle.white,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.33,
            left: MediaQuery.of(context).size.width * 0.5 - 50,
            child: Parent(
              style: IntroPageStyle.logoStyle,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.342,
            left: MediaQuery.of(context).size.width * 0.5 - 29,
            child: Parent(
              child: Text(
                'b',
                style: IntroPageStyle.logoTextStyle(context),
              ),
            ),
          ),
          Center(
            child: Parent(
              style: ParentStyle()
                ..margin(top: 0),
              child: Txt(
                'BARSAMIN',
                style: TxtStyle()
                  ..fontSize(15)
                  ..letterSpacing(3)
                  ..textColor(GlobalStyle.black),
              )
            ),
          ),
          Positioned(
            bottom: 220,
            left: MediaQuery.of(context).size.width * 0.5 - 150,
            child: BmButton(text: 'Login', onPressed: () {
              Navigator.of(context).pushNamed('/login');
            },), 
          ),
          Positioned(
            bottom: 150,
            left: MediaQuery.of(context).size.width * 0.5 - 150,
            child: BmButton(text: 'Register', onPressed: () {
              Navigator.of(context).pushNamed('/register');
            },), 
          ),

          
        ],
      )
    );
  }
}

