/*
 * @author Yinghan Wang
 * @date
 * @
 */
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String data;

  SecondPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Confirmation page'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Confirmation Page',
              style: TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}

