/*
 * @author Yinghan Wang
 * @date
 * @
 */
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
    print('dadfasdfasdfas');
    // await FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    // await FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
  }

  /*
   * @author Yinghan Wang
   * @date
   * @override
   */
  Widget build(BuildContext context) {
    this.beforeBuild(context);

    return Scaffold(
      body:Container(
        color: GlobalStyle.white,
        child: Column(
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
                      ..textColor(GlobalStyle.white),
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
      ), 
    );
  }
}

