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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            child: Text(''),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Parent(
                    style: IntroPageStyle.logoStyle,
                  ),
                ],
              ),
              Parent(
                style: ParentStyle()
                  ..margin(top: 20),
                child: Txt(
                  'BARSAMIN',
                  style: TxtStyle()
                    ..fontSize(15)
                    ..letterSpacing(3)
                    ..textColor(GlobalStyle.black),
                )
              ),
            ],
          ),
          
          Padding(
            padding: EdgeInsets.all(50),
            // bottom: 30,
            child: Column(
              children: <Widget>[
                
                SizedBox(
                  width: double.infinity,
                  child: BmButton(text: 'Login', onPressed: () {
                    Navigator.of(context).pushNamed('/login');
                  },),
                ),

                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: double.infinity,
                    child: BmButton(text: 'Register', onPressed: () {
                      Navigator.of(context).pushNamed('/register');
                    },), 
                  ),
                ),
              ],
            ), 
          ),

          Container(
            
            
              child: Txt(
                'Now led tedious shy lasting females off. Dashwood marianne in of entrance be on wondered possible building. Wondered sociable he carriage ',
                style: TxtStyle()..textAlign.center()..padding(left: 30.0, right: 30),
              ),
            
          ),
        ],
      )
    );
  }
}

