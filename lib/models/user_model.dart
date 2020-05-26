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
  Future<dynamic> getData() {
    return Future.delayed(const Duration(seconds: 2), () {
      print('get data complete');
      return {'bar': 'adsfaf'};
    });
  }

  /*
   * @author Yinghan Wang
   * @date
   * @
   */
  Future<dynamic> login() {
    return Future.delayed(const Duration(seconds: 5), () {
      print('login complete');
      return {"foo": 100};
    });
  }

  /*
   * @author Yinghan Wang
   * @date
   * @
   */
  Future<dynamic> signout() {
    return Future.delayed(const Duration(seconds: 5), () {
      print('sign out complete');
      return {"signout": 'asdasdfliixkjcjkiowjak;s23kl2k34j'};
    });
  }
}