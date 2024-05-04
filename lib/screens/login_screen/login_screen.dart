// ignore_for_file: deprecated_member_use

import "package:flutter/material.dart";

import "package:kist_college/components/custom_buttons.dart";
import "package:kist_college/constants.dart";
import "package:kist_college/screens/home_screen/home_screen.dart";

class LoginScreen extends StatefulWidget {
  static String routeName = 'LoginScreen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //validate our form
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/k.png',
                    height: 150.0,
                    width: 150.0,
                  ),
                  const SizedBox(
                    height: kDefaultPadding / 2,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hi',
                        style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 35.0,
                            color: kTextLightColor),
                      ),
                      Text(
                        ' Student',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                            color: kTextWhiteColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: kDefaultPadding / 6,
                  ),
                  Text(
                    'sign in to continue',
                    style: Theme.of(context).textTheme.titleSmall,
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding * 3),
                  topRight: Radius.circular(kDefaultPadding * 3),
                ),
                color: kOtherColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          sizedBox,
                          TextFormField(
                            textAlign: TextAlign.start,
                            keyboardType: TextInputType.emailAddress,
                            style: const TextStyle(
                                color: kTextBlackColor,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w300),
                            decoration: const InputDecoration(
                              labelText: 'Mobile Number/Email',
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              isDense: true,
                            ),
                            validator: buildEmailField,
                          ),
                          sizedBox,
                          TextFormField(
                            obscureText: !_passwordVisible,
                            textAlign: TextAlign.start,
                            keyboardType: TextInputType.visiblePassword,
                            style: const TextStyle(
                                color: kTextBlackColor,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w300),
                            decoration: InputDecoration(
                              labelText: 'Password',
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              isDense: true,
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                                icon: Icon(_passwordVisible
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined),
                                iconSize: kDefaultPadding,
                              ),
                            ),
                            // ignore: body_might_complete_normally_nullable
                            validator: (value) {
                              if (value!.length < 5) {
                                return 'Must be more than 5 character';
                              }
                            },
                          ),
                          sizedBox,
                          DefaultButton(
                            onPress: () {
                              if (_formKey.currentState!.validate()) {
                                //go to next activity
                                Navigator.pushNamedAndRemoveUntil(context,
                                    HomeScreen.routeName, (route) => false);
                              }
                            },
                            title: "Sign In",
                            iconData: Icons.arrow_forward_outlined,
                          ),
                          sizedBox,
                          const Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              'Forgot Password',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: kPrimaryColor, fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // ignore: body_might_complete_normally_nullable
  String? buildEmailField(value) {
    RegExp regExp = RegExp(emailPattern);
    if (value == null || value.isEmpty) {
      return 'please enter some text';
    } else if (!regExp.hasMatch(value)) {
      return 'please enter a valid email address.';
    }
  }
}
