import 'package:flutter/material.dart';
import 'package:kist_college/screens/login_screen/login_screen.dart';
import 'package:kist_college/screens/splash_screen/splash_screen.dart';

Map<String, WidgetBuilder> routes = {
  //all screens will be registered here like manifest in android
  SplashScreen.routeName: (context) => const SplashScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
};
