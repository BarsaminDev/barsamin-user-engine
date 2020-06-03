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
    ..margin(top: 200);

  /*
   * @author Yinghan Wang
   * @date
   * @
   */
  static final logoStyle = ParentStyle()
    ..height(100)
    ..width(100)
    ..padding(horizontal: 20.0, vertical: 10)
    ..alignment.center()
    ..background.color(GlobalStyle.primaryColor)
    ..borderRadius(all: 24)
    ..margin(bottom: 30)
    ..elevation(15, color: GlobalStyle.primaryColor);

  /*
   * @author Yinghan Wang
   * @date
   * @
   */
  static final welcomeMessageStyle = TxtStyle()
    ..fontWeight(FontWeight.w700)
    ..letterSpacing(5)
    ..fontSize(17);

  /*
   * @author Yinghan Wang
   * @date
   * @
   */
  static TextStyle logoTextStyle (BuildContext context) {
    return GoogleFonts.lexendTera(
      textStyle: Theme.of(context).textTheme.headline4,
      fontSize: 20,
      color: Colors.black,
      letterSpacing: 2,
      fontWeight: FontWeight.w900,
    );
  }
}
