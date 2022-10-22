import 'package:coffee_shop_mobile_app/onboardingOne.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnBoarding extends StatelessWidget {
  String? headerone;
  String? headertwo;
  String? textOne;
  String? textTwo;
  OnBoarding(
      {this.headerone, this.headertwo, this.textOne, this.textTwo, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headerone!,
          style: TextStyle(color: Colors.white, fontSize: 42),
        ),
        Text(headertwo!, style: TextStyle(color: Colors.white, fontSize: 42)),
        SizedBox(height: 20),
        Text(
          textOne!,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        Text(
          textTwo!,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
