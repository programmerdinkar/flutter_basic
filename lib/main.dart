import 'package:flutter/material.dart';
import 'package:login_and_signup_design_screens/CardviewLoginScreen.dart';
import 'package:login_and_signup_design_screens/LoginScreen.dart';
import 'package:login_and_signup_design_screens/SignupScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'cardviewLoginScreen',
    routes: {
      'loginscreen': (context) => LoginScreen(),
      'signupscreen': (context) => SignupScreen(),
      'cardviewLoginScreen': (context) => CardviewLoginScreen()
    },
  ));
}

