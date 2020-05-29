/*
 * @author Yinghan Wang
 * @date
 * @
 */
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:basamin/main.dart';

class SecondPage extends StatelessWidget {
  final String data;

  SecondPage({
    Key key,
    @required this.data,
  }) : super(key: key);


  void init(context) {
    AppModel appModel = GetIt.instance<AppModel>();
    appModel.getDevice();
    appModel.validate('second page');
    appModel.getDevice();
  }

  Widget build(BuildContext context) {
    init(context);
    

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

