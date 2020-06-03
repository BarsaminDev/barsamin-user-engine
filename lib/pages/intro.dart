/*
 * @author Yinghan Wang
 * @date
 * @
 */

import 'dart:async';

import 'package:basamin/styles/global/global.style.dart';
import 'package:division/division.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:basamin/styles/pages/intro-page.style.dart';

class Intro extends StatelessWidget {

  Intro({
    Key key,
  }) : super(key: key);

  /*
   * @author Yinghan Wang
   * @date
   * @do this before everything
   */
  void beforeBuild(context) {
    Future.delayed(const Duration(seconds: 3), () {
      return Navigator.of(context).pushNamed(
        '/first', 
        arguments: 'come from the intro page to the first page',
      ); 
    });

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
              color: GlobalStyle.primaryColor,
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
                  ..textColor(GlobalStyle.white),
              )
            ),
          ),
        ],
      )
    );
    
    // return Scaffold (
    //   body: Parent(
    //     style: IntroPageStyle.logoCtnrStyle,
    //     // margin: const EdgeInsets.only(top: 300),
    //     child: Column(
    //       mainAxisSize: MainAxisSize.min,
    //       children: <Widget>[
    //         Parent(
    //           child: Text(''),
    //           style: IntroPageStyle.logoStyle,
    //         ),
    //         Text('BARSAMIN', style: IntroPageStyle.logoTextStyle(context),),
    //         // Parent(
    //         //   style: ParentStyle()
    //         //     ..margin(top: 190),
    //         //   child: Column(
    //         //     children: [
    //         //       Txt( 'WELCOME', style: IntroPageStyle.welcomeMessageStyle, ),
    //         //       Parent(
    //         //         style: ParentStyle()
    //         //           ..margin(top: 10)
    //         //           ..padding(right: 40, left: 40),
    //         //         child: Text(
    //         //           'For personal data protection, service cost effictiveness and pursuing trusted identity.',
    //         //           textAlign: TextAlign.center,
    //         //           style: TextStyle(color: Colors.grey,),
    //         //         ),
    //         //       ),
                  
    //         //     ]
    //         //   ),
    //         // ),
    //       ],
    //     ),
    //   ),
    // );
  }
}

