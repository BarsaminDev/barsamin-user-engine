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
void main() {
  // CREATE USER SERVCIE
  final UserModel user = new UserModel(id: 11, name: 'Alan', age: '21', nationality: 'irish');
  user.getData();

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
