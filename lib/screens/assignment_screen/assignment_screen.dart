import 'package:flutter/material.dart';
import 'package:kist_college/constants.dart';

class AssignmentScreen extends StatelessWidget {
  const AssignmentScreen({Key? key}) : super(key: key);
  static String routeName = 'AssignmentScreen';

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
                'Assignment ',
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
