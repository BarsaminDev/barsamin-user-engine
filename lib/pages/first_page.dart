/*
 * @author Yinghan Wang
 * @date
 * @
 */
import 'package:basamin/services/product_list_service.dart';
import 'package:flutter/material.dart';
import 'package:basamin/components/identity.dart';
import 'package:get_it/get_it.dart';

/*
 * @author Yinghan Wang
 * @date
 * @state boilerplate
 */
class FirstPage extends StatefulWidget{
  @override
  createState() => FirstPageState();
}

/*
 * @author Yinghan Wang
 * @date
 * @controller
 */
class FirstPageState extends State<FirstPage>{
  FirstPageState() {
    refresh();
  }
  // STATE
  int _index = 0;
  ProductListService pls = GetIt.I<ProductListService>();
  

  // List<dynamic> _data;
 
  
  // EVENTS
  void _onClickFoo() {
    setState(() {
  
      _index = 0;
      // print(_data);
      // _data[0]['name'] =  'sdfadfadf###';
      // print(_data);
    });
  }

  void onPressedSecondPage(context) {
    print('555666666');    
    setState(() {
      _index = 1;
    });
    // return Navigator.of(context).pushNamed(
    //   '/third', 
    //   arguments: 'come from the first page to the second page',
    // );
  }

  void onThirdPagePressed(context) {
    print('hljdalsd333333fjlr');    
    setState(() {
      _index = 2;
    });
    // return Navigator.of(context).pushNamed(
    //   '/second', 
    //   arguments: 'come from the first page to the third page',
    // ); 
  }

  void refresh() {
    
    pls.fetch().then((value) {
       
        print('set state....');
        print(value);
    
    });
  
    
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
            Identity(pls.data[_index]['name']),
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