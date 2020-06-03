/*
 * @author Yinghan Wang
 * @date
 * @
 */

import 'dart:async';

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
    Future.delayed(const Duration(seconds: 2), () {
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
    
    return Scaffold (
      body: Parent(
        style: IntroPageStyle.logoCtnrStyle,
        // margin: const EdgeInsets.only(top: 300),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Parent(
              child: Text(''),
              style: IntroPageStyle.logoStyle,
            ),
            Text('BARSAMIN', style: IntroPageStyle.logoTextStyle(context),),
            Parent(
              style: ParentStyle()
                ..margin(top: 190),
              child: Column(
                children: [
                  Txt( 'WELCOME', style: IntroPageStyle.welcomeMessageStyle, ),
                  Parent(
                    style: ParentStyle()
                      ..margin(top: 10)
                      ..padding(right: 40, left: 40),
                    child: Text(
                      'For personal data protection, service cost effictiveness and pursuing trusted identity.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey,),
                    ),
                  ),
                  
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}

