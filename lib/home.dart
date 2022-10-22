import 'package:coffee_shop_mobile_app/onBoardingWidget.dart';
import 'package:coffee_shop_mobile_app/onboardingOne.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// ignore: camel_case_types
class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: 50,
        width: double.infinity,
        child: Column(
          children: [Text('Version 1.0')],
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => onboardingOne()));
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Coffee',
                      style:
                          TextStyle(fontSize: 34, fontWeight: FontWeight.w600),
                    ),
                    Text('Been',
                        style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w600,
                            color: Colors.green))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
