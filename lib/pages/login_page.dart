/*
 * @author Yinghan Wang
 * @date
 * @
 */
import 'package:basamin/components/bm_button.dart';
import 'package:basamin/components/header.dart';
import 'package:basamin/services/product_list_service.dart';
import 'package:basamin/styles/global/global.style.dart';
import 'package:flutter/material.dart';
import 'package:basamin/components/identity.dart';
import 'package:get_it/get_it.dart';
import 'package:basamin/components/bm_text_input.dart';

import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

/*
 * @author Yinghan Wang
 * @date
 * @state boilerplate
 */
class LoginPage extends StatefulWidget{
  @override
  createState() => LoginPageState();
}

/*
 * @author Yinghan Wang
 * @date
 * @controller
 */
class LoginPageState extends State<LoginPage>{

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

  void onPressRegister(context) {    
    Navigator.of(context).pushNamed(
      '/register', 
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
        // appBar: AppBar(
        //   title: Text('Create Account'),
        //   backgroundColor: GlobalStyle.white
        // ),


        body: Column(
          children: <Widget>[
            
            Container(
              child: Header(text: 'Login',),  
            ),

            Container(
              margin: EdgeInsets.only(top: 100),
              child: Padding(
                // top: 300,
                
                padding: EdgeInsets.all(GlobalStyle.pageSideGap),
                child: Column(
                  children: <Widget>[
                    BmTextInput(labelText: 'User name',),
                    BmTextInput(
                      labelText: 'Password',
                      obscureText: true,
                      ),
                  ]
                ),
              ),

            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: BmButton(
                  text: 'Login',
                  onPressed: () => onPressRegister(context),
                ),
              ),              
            ),
          ], 
        ), 
      ),
    );
  }
}