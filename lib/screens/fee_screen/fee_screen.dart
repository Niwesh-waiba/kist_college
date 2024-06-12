import 'package:kist_college/constants.dart';
import 'package:flutter/material.dart';

class FeeScreen extends StatelessWidget {
  const FeeScreen({Key? key}) : super(key: key);
  static String routeName = 'FeeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'fee ',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      // <- Added null-aware access operator
                      color: kTextWhiteColor,
                      fontSize: 50.0, // Adjusted font size
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2.0,
                    ),
              ),
              Text(
                'Screen',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      // <- Added null-aware access operator
                      color: kTextWhiteColor,
                      fontSize: 50.0, // Adjusted font size
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2.0,
                    ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
