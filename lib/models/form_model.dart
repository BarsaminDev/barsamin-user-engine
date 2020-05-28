import 'dart:async';

class FormModel{
  /*
   * @author Yinghan Wang
   * @date
   * @
   */
  dynamic validate() {
    return { "ok": true };
  }


  /*
   * @author Yinghan Wang
   * @date
   * @
   */
  Future <dynamic> submit() {
    return Future.delayed(const Duration(seconds: 2), () {
      print('submiting form');
      return {'ok': true};
    });
  }
}