import 'package:flutter/material.dart';
import 'package:kist_college/screens/assignment_screen/assignment_screen.dart';
import 'package:kist_college/screens/datesheet_screen/datesheet_screen.dart';
import 'package:kist_college/screens/fee_screen/fee_screen.dart';
import 'package:kist_college/screens/home_screen/home_screen.dart';
import 'package:kist_college/screens/login_screen/login_screen.dart';
import 'package:kist_college/screens/my_profile/my_profile.dart';
import 'package:kist_college/screens/splash_screen/splash_screen.dart';

Map<String, WidgetBuilder> routes = {
  //all screens will be registered here like manifest in android
  SplashScreen.routeName: (context) => const SplashScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  MyProfileScreen.routeName: (context) => const MyProfileScreen(),
  DateSheetScreen.routeName: (context) => DateSheetScreen(),
  FeeScreen.routeName: (context) => FeeScreen(),
  AssignmentScreen.routeName: (context) => AssignmentScreen(),
};
