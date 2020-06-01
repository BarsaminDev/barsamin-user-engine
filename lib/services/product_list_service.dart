/*
 * @author Yinghan Wang
 * @date
 * @
 */

// import 'package:basamin/models/user_model.dart';

class ProductListService {

  var data = [{'name': 'waht'}];
  
  Future fetch() {
    return Future.delayed(const Duration(seconds: 2), () {
      this.data = [
        { 'uid': '111', 'name': 'hank' },
        { 'uid': '222', 'name': 'john' },
        { 'uid': '333', 'name': 'smith' },
        { 'uid': '444', 'name': 'ellen' },
        { 'uid': '555', 'name': 'black' },
        { 'uid': '666', 'name': 'white' },
      ];
      return this.data;
    });
  }

  void sort() {
    this.data.sort((a, b) => a['name'].compareTo(b['name']));
  }
}