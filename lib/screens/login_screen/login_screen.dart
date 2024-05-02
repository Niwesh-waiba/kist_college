import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:kist_college/constants.dart";

late bool _passwordVisible;

class LoginScreen extends StatefulWidget {
  static String routeName = 'LoginScreen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //changes current state
  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //when user taps anywhere on the screen, the keyboard hides.
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: ListView(
          children: [
            //divide the body into two half
            // ignore: sized_box_for_whitespace
            Container(
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
                    style: Theme.of(context).textTheme.subtitle2,
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
                        child: Column(
                      children: [
                        const SizedBox(
                          height: kDefaultPadding,
                        ),
                        TextFormField(
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(
                              color: kTextBlackColor,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w300),
                          decoration: const InputDecoration(
                            labelText: 'Mobile Number/Email',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            isDense: true,
                          ),
                        ),
                        const SizedBox(
                          height: kDefaultPadding,
                        ),
                        TextFormField(
                          obscureText: _passwordVisible,
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.visiblePassword,
                          style: const TextStyle(
                              color: kTextBlackColor,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w300),
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            isDense: true,
                            // suffixIcon: IconButton(
                            //   onPressed: () {
                            //     setState(() {
                            //       _passwordVisible = !_passwordVisible;
                            //     });
                            //   },
                            //   icon: Icon(_passwordVisible
                            //       ? Icons.visibility_off_outlined
                            //       : Icons.visibility_off_outlined),
                            //   iconSize: kDefaultPadding,
                            // ),
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
