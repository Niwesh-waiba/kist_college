// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:kist_college/constants.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});
  static String routeName = "MyProfileScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        actions: [
          InkWell(
            onTap: () {
              //send report to school management ,incase student want some change in profile
            },
            child: Container(
              padding: const EdgeInsets.only(right: kDefaultPadding / 2),
              child: Row(
                children: [
                  const Icon(Icons.report_gmailerrorred_outlined),
                  kHalfWidthsizedBox,
                  Text(
                    'Report',
                    style: Theme.of(context).textTheme.subtitle2,
                  )
                ],
              ),
            ),
          )
        ],
      ),
      body: Container(
        color: kOtherColor,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(kDefaultPadding * 2),
                    bottomLeft: Radius.circular(kDefaultPadding * 2)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    maxRadius: 50.0,
                    minRadius: 50.0,
                    backgroundColor: kSecondaryColor,
                    backgroundImage: AssetImage('assets/images/n.jpg'),
                  ),
                  kwidthsizedBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Niwesh Waiba',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text('BIM 6th sem | Id: 5554',
                          style:
                              Theme.of(context).textTheme.subtitle2!.copyWith(
                                    fontSize: 14.0,
                                  ))
                    ],
                  )
                ],
              ),
            ),
            sizedBox,
            Container(
              padding: const EdgeInsets.only(
                  right: kDefaultPadding / 4,
                  left: kDefaultPadding / 4,
                  top: kDefaultPadding / 2),
              width: MediaQuery.of(context).size.width / 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Registration Number',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: kTextLightColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 15.0),
                      ),
                      kHalfsizedBox,
                      Text(
                        '11424/20',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: kTextBlackColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 15.0),
                      ),
                      kHalfsizedBox,
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: const Divider(
                          thickness: 1.0,
                        ),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.lock_outline,
                    size: 20.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
