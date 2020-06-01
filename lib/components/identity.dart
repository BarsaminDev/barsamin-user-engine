/*
 * @author Yinghan Wang
 * @date
 * @
 */
import 'package:flutter/material.dart';
import 'package:division/division.dart';
import 'package:basamin/styles/components/identity.style.dart';

/*
 * @author Yinghan Wang
 * @date
 * @class identiry
 * @description: component
 */
class Identity extends StatelessWidget {
  // internal property
  final String id;

  // constructor
  Identity(this.id);

  @override
  Widget build(BuildContext context) {
    return Container(
      // style
      width: double.infinity,
      margin: EdgeInsets.all(20),

      // content
      child:Txt(
        '$id', 
        style: IdentityStyle.listItem
      ),
    );
  }
}