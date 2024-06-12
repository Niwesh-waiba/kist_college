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
                    style: Theme.of(context).textTheme.titleSmall,
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
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text('BIM 6th sem | Id: 5554',
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    fontSize: 14.0,
                                  ))
                    ],
                  )
                ],
              ),
            ),
            sizedBox,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetailRow(
                    title: 'Registration Number', value: '11424/20'),
                ProfileDetailRow(title: 'Academic Year', value: '2020-2025'),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetailRow(
                    title: 'Admission Class', value: 'BIM 6th sem'),
                ProfileDetailRow(title: 'Studennt Id', value: '5554'),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetailRow(
                    title: 'Date of Admission', value: '12 April 2020'),
                ProfileDetailRow(title: 'Date of Birth', value: '4 May 2002'),
              ],
            ),
            const ProfileDetailColumn(
                title: 'Email', value: 'niweshwaiba@gmail.com'),
            const ProfileDetailColumn(
                title: 'Contact number', value: '9866332606'),
            const ProfileDetailColumn(
                title: 'Secondary number', value: '9818509722'),
            const ProfileDetailColumn(
                title: 'Address', value: 'nayabasti, gokarneshwor-5'),
          ],
        ),
      ),
    );
  }
}

class ProfileDetailRow extends StatelessWidget {
  const ProfileDetailRow({super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                title,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: kTextLightColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 15.0),
              ),
              kHalfsizedBox,
              Text(
                value,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
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
    );
  }
}

class ProfileDetailColumn extends StatelessWidget {
  const ProfileDetailColumn(
      {super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: kTextLightColor, fontSize: 15.0),
              ),
              kHalfsizedBox,
              Text(
                value,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: kTextBlackColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600),
              ),
              kHalfsizedBox,
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: const Divider(
                  thickness: 1.0,
                ),
              ),
            ],
          ),
          const Icon(
            Icons.lock_outline,
            size: 20.0,
          ),
        ],
      ),
    );
  }
}
