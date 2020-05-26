/*
 * @author Yinghan Wang
 * @date
 * @
 */
import 'package:flutter/material.dart';

/*
 * @author Yinghan Wang
 * @date
 * @class drop down
 * @description: component
 */
class DropDown extends StatelessWidget {
  // internal property
  final List items = [
    { "value": 'ireland' },
    { "value": 'china' },
    { "value": 'india' },
    { "value": 'japan' },
  ];
  // constructor


  @override
  Widget build(BuildContext context) {
    return Container(
      // style
      width: double.infinity,
      margin: EdgeInsets.all(20),

      // content
      children: items.map(i => Text(i)),
    );
  }
}