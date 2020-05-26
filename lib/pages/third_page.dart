import 'package:flutter/material.dart';
class ThirdPage extends StatelessWidget {
  final String data;

  ThirdPage({
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

