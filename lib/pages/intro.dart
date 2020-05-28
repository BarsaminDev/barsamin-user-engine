/*
 * @author Yinghan Wang
 * @date
 * @
 */

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Intro extends StatelessWidget {

  Intro({
    Key key,
  }) : super(key: key);

 

  Widget build(BuildContext context) {
    print('###########');
    print(context);

    Future.delayed(const Duration(seconds: 3), () {
      return Navigator.of(context).pushNamed(
        '/first', 
        arguments: 'come from the intro page to the first page',
      ); 
    });

    return Scaffold (
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'B',
              style: TextStyle(
                fontSize: 60, 
                fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );

    
  }

  
}

