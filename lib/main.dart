import 'package:animations/splash_screen.dart';
import 'package:animations/utils/routes.dart';
import 'package:animations/utils/routes_name.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.splashScreen,
      onGenerateRoute: Routes.generateRoute,
      home:  Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
