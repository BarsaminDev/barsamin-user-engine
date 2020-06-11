/*
 * @author Yinghan Wang
 * @date
 * @
 */
import 'package:basamin/components/bm_button.dart';
import 'package:basamin/components/bm_text_input.dart';
import 'package:basamin/components/header.dart';
import 'package:basamin/services/validation.dart';
import 'package:basamin/styles/global/global.style.dart';
import 'package:flutter/material.dart';

/*
 * @author Yinghan Wang
 * @date
 * @state boilerplate
 */
class ForgotPassword extends StatelessWidget{
  

  void onPressSend() {
    print('send to your email');
  }

  /*
   * @author Yinghan Wang
   * @date
   * @check email is valid
   */
  bool validateEmail(String value) {
    return Validation.validateEmail(value);
  }


  // VIEW
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        
        body: Column(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: Header(text: 'Forgot Password',),  
            ),
            

            Container(
              margin: EdgeInsets.only(top: 100),
              child: Padding(
                padding: EdgeInsets.only(left: GlobalStyle.pageSideGap, right: GlobalStyle.pageSideGap),
                child: Column(
                  children: <Widget>[
                    BmTextInput(labelText: 'Email',),
                    BmTextInput(labelText: 'Confirm your email',),
                  ]
                ),
              ),
            ),

            /*
             * @author Yinghan Wang
             * @date
             * @
             */
            Padding(
              padding: EdgeInsets.all(GlobalStyle.pageSideGap),
              child: SizedBox(
              width: double.infinity,
              child: BmButton(
                text: 'Send reset link',
                onPressed: () => this.onPressSend(),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}