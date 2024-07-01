import 'package:animations/utils/routes_name.dart';
import 'package:flutter/material.dart';

import '../items_screen.dart';
import '../splash_screen.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteName.splashScreen:
      return MaterialPageRoute(builder: (context)=> const SplashScreen());
      case RouteName.itemsScreen:
        return MaterialPageRoute(builder: (context)=> const ItemsScreen());
      default:
        return MaterialPageRoute(builder: (context){
          return const Scaffold(
            body: Center(child: Text('No route defined')),
          );
        });
    }
  }
}