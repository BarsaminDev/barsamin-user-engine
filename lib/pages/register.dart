/*
 * @author Yinghan Wang
 * @date
 * @
 */
import 'package:basamin/components/bm_button.dart';
import 'package:basamin/components/bm_text_input.dart';
import 'package:basamin/components/header.dart';
import 'package:basamin/styles/global/global.style.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

/*
 * @author Yinghan Wang
 * @date
 * @state boilerplate
 */
class Register extends StatelessWidget{
  



  // @override
  // void initState() {
  //   print('initializing state fo the register page');
  //   super.initState();
  // }
  
  // @override
  // void dispose() {
  //   super.dispose();
  // }

  void onPressRegister(context) {
    print('Register now....');
    // Navigator.of(context).pushNamed(
    //   '/second', 
    //   arguments: 'come from the first page to the second page',
    // ); 
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
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Header(text: 'Create Account',),  
            ),

            Container(
              margin: EdgeInsets.only(top: 100),
              child: Padding(
                // top: 300,
                
                padding: EdgeInsets.all(GlobalStyle.pageSideGap),
                child: Column(
                  children: <Widget>[
                    BmTextInput(labelText: 'Name',),
                    BmTextInput(labelText: 'Email',),
                    BmTextInput(labelText: 'Phone',),
                  ]
                ),
              ),

            ),

            /*
             * @author Yinghan Wang
             * @date
             * @
             */
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                BmButton(
                  text: 'Create Account',
                  onPressed: () => this.onPressRegister(context),
                ),
              ],       
            ),
          ], 
        ), 
      ),
    );
  }
}