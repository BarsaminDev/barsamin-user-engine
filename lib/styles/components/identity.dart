/*
 * @author Yinghan Wang
 * @date
 * @
 */
import 'package:division/division.dart';
import 'package:basamin/styles/global/global.dart';

class IdentityStyle {
  // listItem is equivlent to .list-item class in csss
  static final listItem = TxtStyle()
  ..textColor(GlobalStyle.white)
  ..fontSize(GlobalStyle.largeText)
  ..bold()
  ..textColor(GlobalStyle.red)
  ..italic()
  ..textAlign.start();
}
