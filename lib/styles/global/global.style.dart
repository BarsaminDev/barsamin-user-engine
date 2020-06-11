import 'package:division/division.dart';
import 'package:flutter/material.dart';

class GlobalStyle{
  /*
   * @author Yinghan Wang
   * @date
   * @
   */
  static final baseColor = Colors.indigo[900];
  static final primaryColor = baseColor;
  static final red = Colors.red;
  static final green = Colors.green;
  static final black = Colors.black;
  static final white = Colors.white;
  static final orange = Colors.orange[700];
  static final grey = Colors.grey;
  static final dartGrey = Colors.grey[700];
  static final lightGrey = Colors.grey[100];
  static final pageSideGap = 50.0;

  static final fontChoice = 'Montserrat';

  /*
   * @author Yinghan Wang
   * @date
   * @
   */
  static final double appBarHeight = 50;

  /*
   * @author Yinghan Wang
   * @date
   * @
   */
  static final fontFamily = '';

  /*
   * @author Yinghan Wang
   * @date
   * @
   */
  static final double largeText = 50;
  static final double smallText = 10;
  static final double mediumText = 25;

  /*
   * @author Yinghan Wang
   * @date
   * @
   */
  static final gapRight5 = TxtStyle()..margin(right: 5);
  static final gapRight10 = TxtStyle()..margin(right: 10);
  static final gapRight20 = TxtStyle()..margin(right: 20);

  /*
   * @author Yinghan Wang
   * @date
   * @
   */
  static final gapLeft5 = TxtStyle()..margin(left: 5);
  static final gapLeft10 = TxtStyle()..margin(left: 10);
  static final gapLeft20 = TxtStyle()..margin(left: 20);

  /*
   * @author Yinghan Wang
   * @date
   * @buttons
   */
  static final primaryBtn = ParentStyle();
  static final secondaryBtn = ParentStyle();
  static final cancleBtn = ParentStyle();
  static final activeBtn = ParentStyle();
  static final disabledBtn = ParentStyle();
}


