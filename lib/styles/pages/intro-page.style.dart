/*
 * @author Yinghan Wang
 * @date
 * @
 */
import 'package:division/division.dart';
import 'package:basamin/styles/global/global.style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPageStyle {
  /*
   * @author Yinghan Wang
   * @date
   * @
   */
  static final logoCtnrStyle = ParentStyle()
    ..background.color(GlobalStyle.primaryColor)
    ..margin(top: 200);

  /*
   * @author Yinghan Wang
   * @date
   * @
   */
  static final logoStyle = ParentStyle()
    ..height(100)
    ..width(100)
    ..alignment.center()
    ..background.color(GlobalStyle.white)
    ..borderRadius(all: 10)
    ..rotate(0.02)
    ..elevation(15, color: GlobalStyle.primaryColor);

  /*
   * @author Yinghan Wang
   * @date
   * @
   */
  static TextStyle logoTextStyle (BuildContext context) {
    return GoogleFonts.lexendTera(
      textStyle: Theme.of(context).textTheme.headline4,
      fontSize: 60,
      color: GlobalStyle.primaryColor,
      letterSpacing: 2,
      fontWeight: FontWeight.w900,
    );
  }
}
