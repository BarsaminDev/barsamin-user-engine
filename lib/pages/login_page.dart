/*
 * @author Yinghan Wang
 * @date
 * @
 */
import 'package:basamin/components/bm_button.dart';
import 'package:basamin/components/header.dart';
import 'package:basamin/services/product_list_service.dart';
import 'package:basamin/styles/global/global.style.dart';
import 'package:division/division.dart';
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
  String scannedRes = '';
  bool rememberme = false;

  @override
  void initState() {
    print('initializing state in the first page');
    super.initState();
  }
  
  // @override
  // void dispose() {
  //   super.dispose();
  // }

  void onPressLogin() { 
    print('login in progress');
  }

  void onPressShowModal() {
    print('show modal');
  }

  void onPressForgot(context) {
    print('forgot passwork');
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

            Padding(
              padding: EdgeInsets.all(50),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    child: Padding(
                      // top: 300,
                      
                      padding: EdgeInsets.all(0),
                      child: Column(
                        children: <Widget>[
                          BmTextInput(labelText: 'User name',),
                          BmTextInput(
                            labelText: 'Password',
                            obscureText: true,
                          ),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 24.0,
                                width: 24.0,
                                child: Checkbox(
                                  value: rememberme,
                                  onChanged: (bool value) {
                                    setState(() {
                                        rememberme = value;
                                    });
                                  },
                                ),
                                
                              ),
                              FlatButton(
                                onPressed: () {
                                  setState(() {
                                    rememberme = !rememberme;
                                  });
                                }, 
                                child: Txt('Remember me'),
                              ),
                            ],
                          ),
                        ]
                      ),
                    ),
                  ),

                  // SizedBox.expand(
                  //   child: RaisedButton(child: Text('data'), onPressed: null,),
                  // ),
                  Container(
                    margin: EdgeInsets.only(top: 150),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: double.infinity,
                          child: BmButton(
                              text: 'Login',
                              onPressed: () => this.onPressLogin(),
                            ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/forgot-password');
                              },
                              // onPressed: () => this.onPressForgot(), 
                              child: Text('Forgot password'),
                            ),
                          ],
                        ),
                      ],       
                    ),

                  ),
                ],
              ),
            ),


            
          ], 
        ), 
      ),
    );
  }
}