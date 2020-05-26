import 'dart:async';

import 'package:flutter/cupertino.dart';

class UserModel {
  var id;
  var name;
  var age;
  var nationality;

  /*
   * @author Yinghan Wang
   * @date
   * @
   */
  UserModel({
    @required this.id,
    @required this.name,
    @required this.age,
    @required this.nationality
  });

  /*
   * @author Yinghan Wang
   * @date
   * @
   */
  Future getData() {
    // Timer(Duration(seconds: 1), () => print('fetch data for user'));
    final p = Future.delayed(const Duration(seconds: 2), () {
      print('get data complete');
      return {'bar': 'adsfaf'};
    });

    return p;
  }

  /*
   * @author Yinghan Wang
   * @date
   * @
   */
  Future login() {
    // Timer(Duration(seconds: 1), () => print('fetch data for user'));
    final p = Future.delayed(const Duration(seconds: 5), () {
      print('login complete');
      return {"foo": 100};
    });

    return p;
  }

  /*
   * @author Yinghan Wang
   * @date
   * @
   */
  Future signout() {
    // Timer(Duration(seconds: 1), () => print('fetch data for user'));
    final p = Future.delayed(const Duration(seconds: 5), () => {
      print('sign out complete')
    });

    return p;
  }
}