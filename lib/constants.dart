import 'package:flutter/material.dart';

//colors
const Color kPrimaryColor = Color.fromARGB(255, 140, 187, 236);
const Color kSecondaryColor = Color(0xFF6789CA);
const Color kTextBlackColor = Color(0xFF313131);
const Color kTextWhiteColor = Color(0xFFFFFFFF);
const Color kContainerColor = Color(0xFF777777);
const Color kOtherColor = Color(0xFFF4F6F7);
const Color kTextLightColor = Color.fromARGB(255, 219, 213, 213);
const Color kErrorBorderColor = Color(0xFFE74C3C);

//default value
const kDefaultPadding = 20.0;

const sizedBox = SizedBox(height: kDefaultPadding);
//validation for mobile
const String mobilePattern = r'^(?:[+0]?9)?[0-9]{10,12}$';

//validation for email
const String emailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
