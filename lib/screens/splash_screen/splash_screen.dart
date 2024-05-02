// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:kist_college/screens/login_screen/login_screen.dart';
// import 'package:kist_college/constants.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "SplashScreen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //we use future to go from one screen to another via duration time
    Future.delayed(const Duration(seconds: 5), () {
      //no return when user is on login screen and press back, it will not return the
      //user to the splash screen
      Navigator.pushNamedAndRemoveUntil(
          context, LoginScreen.routeName, (route) => false);
    });

    return Scaffold(
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/k.png',
                height: 250.0,
                width: 250.0,
              ),
              // Text(
              //   'KIST',
              //   style: Theme.of(context).textTheme.bodyText1!.copyWith(
              //         // <- Added null-aware access operator
              //         color: kTextWhiteColor,
              //         fontSize: 50.0, // Adjusted font size
              //         fontStyle: FontStyle.italic,
              //         letterSpacing: 2.0,
              //       ),
              // ),
              // Text(
              //   'Collegge',
              //   style: Theme.of(context).textTheme.bodyText1!.copyWith(
              //         // <- Added null-aware access operator
              //         color: kTextWhiteColor,
              //         fontSize: 50.0, // Adjusted font size
              //         fontStyle: FontStyle.italic,
              //         letterSpacing: 2.0,
              //       ),
              // ),
            ],
          ),
        ],
      )),
    );
  }
}
