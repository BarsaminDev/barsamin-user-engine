/*
 * @author Yinghan Wang
 * @date
 * @
 */
import 'package:basamin/services/product_list_service.dart';
import 'package:flutter/material.dart';
import 'package:basamin/components/identity.dart';
import 'package:get_it/get_it.dart';

import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

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

  ProductListService pls;
  String scannedRes = '';

  @override
  void initState() {
    print('initializing state in the first page');
    super.initState();
    this.pls = GetIt.I<ProductListService>();
    refresh();
  }
  
  @override
  void dispose() {
    super.dispose();
  }

  Future _onPressScan() async{
    var res = await FlutterBarcodeScanner.scanBarcode('#004297', 'Cancel', true, ScanMode.DEFAULT);
    setState(() {
      this.scannedRes = res;
    });
  }
  
  // EVENTS
  void _onPressSort() {   
    pls.sort();
    setState(() {});
  }

  void onPressGoToSecondPage(context) {
    print('go to the second page');
    Navigator.of(context).pushNamed(
      '/second', 
      arguments: 'come from the first page to the second page',
    ); 
  }

  void onPressGoToThirdPage(context) {    
    print('go to the third page');
    Navigator.of(context).pushNamed(
      '/third', 
      arguments: 'come from the first page to the third page',
    ); 
  }

  void refresh() async{
    await pls.fetch();
    setState(() {});
  }

  void onPressShowModal() {
    print('show modal');
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
          children: <Widget>[
            Container(
              child: Text('Experiment page', style: TextStyle( fontSize: 40 ),),
            ),

            Container(
              child: Text('Scanned value: ${this.scannedRes}')
            ),

            Expanded(
              child: SizedBox(
                child: ListView.builder(
                  itemCount: pls.data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Identity('${pls.data[index]['name']}'),
                    );
                  },
                ),
              ),
            ),
            Container(
              child: Text('i am an modal'),
            ),


            /*
             * @author Yinghan Wang
             * @date
             * @
             */
            RaisedButton(
              child: Text('Scan'),
              onPressed: _onPressScan,
            ),

            /*
             * @author Yinghan Wang
             * @date
             * @
             */
            RaisedButton(
              child: Text('go to second page'),
              onPressed: () => onPressGoToSecondPage(context),
            ),

            /*
             * @author Yinghan Wang
             * @date
             * @
             */
            RaisedButton(
              child: Text('Form Page'),
              onPressed: () => onPressGoToThirdPage(context),
            ),

            /*
             * @author Yinghan Wang
             * @date
             * @
             */
            RaisedButton(
              child: Text('sort'),
              onPressed: _onPressSort,
            ),

            /*
             * @author Yinghan Wang
             * @date
             * @
             */
            RaisedButton(
              child: Text('show modal'),
              onPressed: onPressShowModal,
            ),
          ], 
        ), 
      ),
    );
  }
}