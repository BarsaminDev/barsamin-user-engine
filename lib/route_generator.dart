import 'package:flutter/material.dart';

// pages
import 'package:basamin/pages/first_page.dart';
import 'package:basamin/pages/second_page.dart';
import 'package:basamin/pages/third_page.dart';

/*
 * @author Yinghan Wang
 * @date
 * @
 */
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
  
    switch (settings.name) {
      /*
       * @author Yinghan Wang
       * @date
       * @
       */
      case '/':
        return MaterialPageRoute(builder: (_) => FirstPage());

      /*
       * @author Yinghan Wang
       * @date
       * @
       */
      case '/second':
        if(args is String) {
          return MaterialPageRoute(
            builder: (_) => SecondPage(
              data: args
            ),
          );
        }

        return _errorRoute();

      /*
       * @author Yinghan Wang
       * @date
       * @
       */
      case '/third':
        return MaterialPageRoute(
          builder: (_) => ThirdPage(
            data: args
          ),
        );
        
      
      /*
       * @author Yinghan Wang
       * @date
       * @
       */
      default: return _errorRoute();
    }
  }

  /*
   * @author Yinghan Wang
   * @date
   * @
   */
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error')
        ),
        body: Center(
          child: Text('Error: Page not exist')
        ),
      );
    });
  }
}