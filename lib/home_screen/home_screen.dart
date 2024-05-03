// ignore_for_file: deprecated_member_use, sized_box_for_whitespace

import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:kist_college/constants.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routeName = "HomeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //dividing screen into two parts
          //fixed height for the first half
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Hi ",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(fontWeight: FontWeight.w200),
                            ),
                            Text(
                              "Niwesh",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        Text(
                          "BIM 6th Sem | Id: 5554 ",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(fontSize: 14.0, color: kTextWhiteColor),
                        ),
                        const SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        Container(
                          width: 100,
                          height: 20,
                          decoration: BoxDecoration(
                            color: kOtherColor,
                            borderRadius:
                                BorderRadius.circular(kDefaultPadding),
                          ),
                          child: const Center(
                            child: Text(
                              'Batch: 2020 - 2025',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: kTextBlackColor,
                                  fontWeight: FontWeight.w200),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: kDefaultPadding / 6,
                    ),
                    GestureDetector(
                      onTap: () {
                        //go to profile edit screen from here
                      },
                      child: const CircleAvatar(
                        minRadius: 50.0,
                        maxRadius: 50.0,
                        backgroundColor: kSecondaryColor,
                        backgroundImage: AssetImage('assets/images/n.jpg'),
                      ),
                    )
                  ],
                ),
                sizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        //go to attendance screen here
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 9,
                        decoration: BoxDecoration(
                            color: kOtherColor,
                            borderRadius:
                                BorderRadius.circular(kDefaultPadding)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Attendance',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      fontSize: 16.0,
                                      color: kTextBlackColor,
                                      fontWeight: FontWeight.w800),
                            ),
                            Text(
                              '90.79 %',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                      fontSize: 25.0,
                                      color: kTextBlackColor,
                                      fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //go to fees screen here
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 9,
                        decoration: BoxDecoration(
                            color: kOtherColor,
                            borderRadius:
                                BorderRadius.circular(kDefaultPadding)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Fees Dues',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      fontSize: 16.0,
                                      color: kTextBlackColor,
                                      fontWeight: FontWeight.w800),
                            ),
                            Text(
                              'Rs. 50,000',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                      fontSize: 25.0,
                                      color: kTextBlackColor,
                                      fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          //other will use the remaining height of the screen
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: kOtherColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(kDefaultPadding * 3),
                      topRight: Radius.circular(kDefaultPadding * 3),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
