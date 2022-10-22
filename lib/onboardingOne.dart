// ignore_for_file: prefer_const_constructors

import 'package:coffee_shop_mobile_app/loginPageOne.dart';
import 'package:coffee_shop_mobile_app/onBoardingWidget.dart';
import 'package:coffee_shop_mobile_app/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'onBoardingWidget.dart';

class onboardingOne extends StatefulWidget {
  const onboardingOne({super.key});

  @override
  State<onboardingOne> createState() => _onboardingOneState();
}

class _onboardingOneState extends State<onboardingOne> {
  PageController boarding = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/boardone.jpeg',
                  ),
                  fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                SizedBox(
                  height: 200,
                  child: PageView(
                    controller: boarding,
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    children: [
                      OnBoarding(
                        headerone: 'Let\'s explore',
                        headertwo: 'Kinds of Coffee',
                        textOne: 'Lets explore various coffee flavours',
                        textTwo: 'with us with just few clicks',
                      ),
                      OnBoarding(
                        headerone: 'Monitor and',
                        headertwo: 'Visit the Coffee',
                        textOne: ' Monitor the state of the cafe and visit',
                        textTwo: 'with your friends',
                      ),
                      OnBoarding(
                        headerone: 'Get ready for the',
                        headertwo: 'newest Coffee',
                        textOne: 'Get ready to try the newest coffee',
                        textTwo: 'variant with your friends',
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    currentPage == 0
                        ? Container(
                            decoration:
                                BoxDecoration(color: Colors.greenAccent),
                            height: 2,
                            width: 100,
                          )
                        : Container(
                            decoration: BoxDecoration(color: Colors.grey),
                            height: 2,
                            width: 100,
                          ),
                    SizedBox(width: 8),
                    currentPage == 1
                        ? Container(
                            decoration:
                                BoxDecoration(color: Colors.greenAccent),
                            height: 2,
                            width: 100,
                          )
                        : Container(
                            decoration: BoxDecoration(color: Colors.grey),
                            height: 2,
                            width: 100,
                          ),
                    SizedBox(width: 8),
                    currentPage == 2
                        ? Container(
                            decoration:
                                BoxDecoration(color: Colors.greenAccent),
                            height: 2,
                            width: 100,
                          )
                        : Container(
                            decoration: BoxDecoration(color: Colors.grey),
                            height: 2,
                            width: 100,
                          ),
                  ],
                ),
                SizedBox(height: 30),
                GestureDetector(
                    onTap: () {
                      currentPage == 2
                          ? Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginPageOne()))
                          : boarding.nextPage(
                              duration: Duration(milliseconds: 2),
                              curve: Curves.linear);
                    },
                    child: currentPage == 2
                        ? CustomButton()
                        : Container(
                            decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            width: 350,
                            height: 50,
                            child: Center(
                              child: Text(
                                'Next',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ))
              ],
            ),
          )),
    );
  }
}
