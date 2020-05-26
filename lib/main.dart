/*
 * @author Yinghan Wang
 * @date
 * @
 */
import 'package:basamin/route_generator.dart';
import 'package:flutter/material.dart';

// INCLUDE SERVICES
import 'package:basamin/models/user_model.dart';
import 'package:basamin/models/form_model.dart';
// import 'package:flutter/rendering.dart';



/*
 * @author Yinghan Wang
 * @date
 * @
 */
void main() async {
  // CREATE USER SERVCIE
  final UserModel user = new UserModel(id: 11, name: 'Alan', age: '21', nationality: 'irish');
  
  // mocking fetching data
  var data = await user.getData();
  print(data);

  // mocking login
  var loginRs = await user.login();
  print(loginRs);

  // mocking signout
  var signoutRs = await user.signout();
  print(signoutRs);

  // CREATE FORM SERVICE
  final FormModel form = new FormModel();
  form.validate();

  // CREATE FORM SERVICE
  runApp(new MyApp());
}

/*
 * @author Yinghan Wang
 * @date
 * @
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basarmin Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
