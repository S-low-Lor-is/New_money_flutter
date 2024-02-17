import 'package:flutter/material.dart';
import 'package:new_m/pages/home.dart';
import 'package:new_m/pages/welcome.dart';
import 'package:new_m/pages/login_email.dart';
import 'package:new_m/pages/splash.dart';
import 'package:new_m/pages/login_phone.dart';
import 'package:new_m/pages/register_email.dart';
import 'package:new_m/pages/reset_password.dart';
import 'package:new_m/pages/login_phone_code.dart';



void main() {
  runApp(MaterialApp(
    initialRoute: '/splash',
    routes: {
      '/': (context) => WelcomePage(),
      '/sign_in_option': (context) => MyHomePage(),
      '/register_email':(context) => RegisterEmail(),
      '/login_email':(context) => LoginEmail(),
      '/splash':(context) => SplashScreen(),
      '/login_phone':(context) => LoginPhone(),
      '/reset_password':(context) => ResetPassword(),
      '/login_phone_code':(context) => LoginPhoneCode(),
    },
  ));
}
