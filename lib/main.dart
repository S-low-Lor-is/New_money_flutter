import 'package:flutter/material.dart';
import 'package:new_m/pages/home.dart';
import 'package:new_m/pages/welcome.dart';
import 'package:new_m/pages/login_email.dart';
import 'package:new_m/pages/splash.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => WelcomePage(),
      '/sign_in_option': (context) => MyHomePage(),
      '/login_email':(context) => LoginEmail(),
      '/splash':(context) => SplashScreen(),
     
    },
  ));
}
