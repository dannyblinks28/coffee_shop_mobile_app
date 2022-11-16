import 'dart:ui';

import 'package:coffee_shop_mobile_app/HomePage/detailPlaceBooking.dart';
import 'package:coffee_shop_mobile_app/loginPageOne.dart';
import 'package:coffee_shop_mobile_app/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';

class CoverPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/coverImage.webp'),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginPageOne()));
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Text(
                'Coffee Bean',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Bali, Indonesia',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    '100+ people has explored',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Spacer(),
                  Stack(
                    children: [
                      FlutterImageStack(
                        imageSource: ImageSource.Asset,
                        imageList: [
                          'assets/images/profile1.jpg',
                          'assets/images/profile2.jpg',
                          'assets/images/profile3.jpg',
                          'assets/images/profile4.jpg',
                          'assets/images/profile5.jpg'
                        ],
                        totalCount: 5,
                        itemCount: 5,
                        itemRadius: 40,
                        itemBorderColor: Colors.white,
                        itemBorderWidth: 3,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(color: Colors.white),
                height: 2,
                width: double.infinity,
              ),
              SizedBox(height: 20),
              Text(
                'Bali is an island in Indonesia known for its verdant volcanoes, unique rice terraces, beaches, and beautiful corel reefs. Before becoming a tourist attraction, Kuta was a trading post where local products were traded to buyers outside Bali.',
                style: TextStyle(
                  height: 1.5,
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailPlaceBooking()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: Column(
                    children: [
                      CustomButton(
                        buttonText: 'See more',
                        backgroundColor: Colors.greenAccent,
                        textColor: Colors.white,
                        boxHeight: 50,
                        boxWidth: 350,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
