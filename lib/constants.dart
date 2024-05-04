import 'package:flutter/material.dart';

//colors
const Color kPrimaryColor = Color.fromARGB(255, 109, 166, 226);
const Color kSecondaryColor = Color.fromARGB(255, 75, 110, 175);
const Color kTextBlackColor = Color(0xFF313131);
const Color kTextWhiteColor = Color(0xFFFFFFFF);
const Color kContainerColor = Color(0xFF777777);
const Color kOtherColor = Color(0xFFF4F6F7);
const Color kTextLightColor = Color.fromARGB(255, 175, 172, 172);
const Color kErrorBorderColor = Color(0xFFE74C3C);

//default value
const kDefaultPadding = 20.0;
const kHalfsizedBox = SizedBox(
  height: kDefaultPadding / 2,
);
const kHalfWidthsizedBox = SizedBox(
  width: kDefaultPadding / 2,
);
const kwidthsizedBox = SizedBox(
  width: kDefaultPadding,
);
const sizedBox = SizedBox(height: kDefaultPadding);
//validation for mobile
const String mobilePattern = r'^(?:[+0]?9)?[0-9]{10,12}$';

//validation for email
const String emailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
