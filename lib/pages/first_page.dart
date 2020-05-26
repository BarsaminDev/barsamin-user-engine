/*
 * @author Yinghan Wang
 * @date
 * @
 */
import 'package:flutter/material.dart';
import 'package:basamin/components/identity.dart';

class FirstPage extends StatelessWidget{
  // STATE
  final _index = 0;
  final _data = [ 'what is your screen sh1111sdasdfot?', 'what is your name, and hwat is you job', 'what is your pasdfasdfasfssord'];
  
  // EVENTS
  void _onClickFoo() {
    print(_index);
  }

  Future onPressedSecondPage(context) {
    print('555666666');    
    return Navigator.of(context).pushNamed(
      '/third', 
      arguments: 'come from the first page to the second page',
    );
  }

  Future onThirdPagePressed(context) {
    print('hljdalsd333333fjlr');    
    return Navigator.of(context).pushNamed(
      '/second', 
      arguments: 'come from the first page to the third page',
    ); 
  }

  // VIEW
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter POC'),
        ),
        body: Column(
          children: [
            Identity(_data[_index]),
            RaisedButton(
              child: Text('Anser 1'),
              onPressed: _onClickFoo,
            ),
            RaisedButton(
              child: Text('Anser 2'),
              onPressed: () => onPressedSecondPage(context),
            ),
            RaisedButton(
              child: Text('Anser 3'),
              onPressed: () => onThirdPagePressed(context),
            ),
          ],
        ),
      ),
    );
  }
}