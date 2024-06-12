import 'package:kist_college/constants.dart';

import 'package:flutter/material.dart';

class DateSheetScreen extends StatelessWidget {
  const DateSheetScreen({Key? key}) : super(key: key);
  static const String routeName = 'DateSheetScreen';

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
                'Datesheet ',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      // <- Added null-aware access operator
                      color: kTextWhiteColor,
                      fontSize: 50.0, // Adjusted font size
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2.0,
                    ),
              ),
              Text(
                'Page',
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
