/*
 * @author Yinghan Wang
 * @date
 * @
 */
import 'package:basamin/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

// INCLUDE SERVICES
import 'package:basamin/models/user_model.dart';
import 'package:basamin/models/form_model.dart';
// import 'package:flutter/rendering.dart';



class AppModel {
  String device = '';
  void validate(value) {
    device = value;
    print('validate form now... please wait...');
  }

  String getDevice() {
    print(this.device);
    return device;
  }
}



/*
 * @author Yinghan Wang
 * @date
 * @
 */
void main() async {
  GetIt getIt = GetIt.instance;
  var appModel = AppModel();
  getIt.registerSingleton<AppModel>(appModel);
  appModel.validate('main page');
  appModel.getDevice();

  // CREATE FORM SERVICE
  runApp(new MyApp());

  // // CREATE USER SERVCIE
  // final UserModel user = new UserModel(id: 11, name: 'Alan', age: '21', nationality: 'irish');
  
  // // mocking fetching data
  // var data = await user.getData();
  // print(data);

  // // mocking login
  // var loginRs = await user.login();
  // print(loginRs);

  // // mocking signout
  // var signoutRs = await user.signout();
  // print(signoutRs);

  // // CREATE FORM SERVICE
  // final FormModel form = new FormModel();
  // form.validate();
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
      debugShowCheckedModeBanner: false,
      title: 'Basarmin Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
