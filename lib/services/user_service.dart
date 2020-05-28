/*
 * @author Yinghan Wang
 * @date
 * @
 */

import 'package:basamin/models/user_model.dart';

class UserService {
  UserModel um = new UserModel(id: 11, name: 'fofo', age: 20, nationality: 'irish');
  fetch() {
    print('fetching users');
    print(this.um);
  }
}