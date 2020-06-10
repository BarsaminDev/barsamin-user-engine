/*
 * @author Yinghan Wang
 * @date
 * @
 */
import 'package:basamin/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:get_it/get_it.dart';

// INCLUDE SERVICES
import 'package:basamin/services/product_list_service.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'package:flutter/rendering.dart';




void setupServices() {
  GetIt getIt = GetIt.I;

  // app model
  var appModel = AppModel();
  getIt.registerSingleton<AppModel>(appModel);

  // product list servcie
  var productListService = ProductListService();
  getIt.registerSingleton<ProductListService>(productListService);
}

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
  setupServices();

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



  void init() async{
    await FlutterStatusbarcolor.setStatusBarColor(Colors.grey[200], animate: true);
    await FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
  }


  @override
  Widget build(BuildContext context) {
    this.init();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Basarmin Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Montserrat',
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
