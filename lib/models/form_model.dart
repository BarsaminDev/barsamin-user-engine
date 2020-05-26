import 'dart:async';

class FormModel {
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
  Future submit() {
    Timer(Duration(seconds: 1), () => print('sign out complete'));
  }
}