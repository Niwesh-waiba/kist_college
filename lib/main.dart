// ignore_for_file: deprecated_member_use

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kist_college/constants.dart';
import 'package:kist_college/routes.dart';
import 'package:kist_college/screens/splash_screen/splash_screen.dart';

import 'package:google_fonts/google_fonts.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBxvMC68lhv3efWkqwM6S_-xoHJJKOoShU",
            appId: "1:1009001803419:web:bfefbefcb320f7907be03e",
            messagingSenderId: "1009001803419",
            projectId: "kistcollege-a665a"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Neuu KIST',
      theme: ThemeData.light().copyWith(
          //scaffold default color
          scaffoldBackgroundColor: kPrimaryColor,
          primaryColor: kPrimaryColor,
          appBarTheme: const AppBarTheme(
            color: kPrimaryColor,
            elevation: 0,
          ),
          //use google font for our app, we will use sourceSansPro
          textTheme: GoogleFonts.ptSansNarrowTextTheme(
              Theme.of(context).textTheme.apply().copyWith(
                    //custom text for bodytext1
                    bodyLarge: const TextStyle(
                        color: kTextWhiteColor,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold),
                    bodyMedium: const TextStyle(
                      color: kTextWhiteColor,
                      fontSize: 28.0,
                    ),
                    titleMedium: const TextStyle(
                        color: kTextWhiteColor,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500),
                    titleSmall: const TextStyle(
                        color: kTextWhiteColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w300),
                  )),

          //input decoration theme for all over the app
          inputDecorationTheme: const InputDecorationTheme(
            labelStyle:
                TextStyle(fontSize: 15.0, color: kTextLightColor, height: 0.5),
            hintStyle:
                TextStyle(fontSize: 15.0, color: kTextBlackColor, height: 0.5),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
              color: kTextLightColor,
              width: 0.7,
            )),
            border: UnderlineInputBorder(
                borderSide: BorderSide(
              color: kTextLightColor,
            )),
            disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
              color: kTextLightColor,
            )),
            //on focus change color
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
              color: kPrimaryColor,
            )),
            //on error change color
            //we will use validators for this process
            errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kErrorBorderColor, width: 1.2)),
            focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kErrorBorderColor, width: 1.2)),
          )),

      //intial route is splash screen
      //mean first screen
      initialRoute: SplashScreen.routeName,
      //define the root file here in order to access the routes anywhere all over the app
      routes: routes,
    );
  }
}
