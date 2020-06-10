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
import 'package:get_it/get_it.dart';
import 'package:basamin/components/bm_text_input.dart';

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


  

  void onPressLogin() {    
    print('login in progress');
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                BmButton(
                  text: 'Login',
                  onPressed: () => this.onPressLogin(),
                ),
              ],       
            ),
          ], 
        ), 
      ),
    );
  }
}