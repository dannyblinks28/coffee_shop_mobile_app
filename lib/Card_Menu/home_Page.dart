// ignore: file_names
import 'package:coffee_shop_mobile_app/Caffee/caffee.dart';
import 'package:coffee_shop_mobile_app/Card_Menu/pay.dart';
import 'package:coffee_shop_mobile_app/Card_Menu/promo.dart';
import 'package:coffee_shop_mobile_app/Card_Menu/topUp.dart';
import 'package:coffee_shop_mobile_app/HomePage/history.dart';
import 'package:coffee_shop_mobile_app/Reward/reward.dart';
import 'package:coffee_shop_mobile_app/Profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../Caffee/explore.dart';
import 'homePageReview.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 1200,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * .25,
                    decoration: BoxDecoration(color: Colors.green),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50, left: 50),
                      child: Text(
                        'Coffee Beans',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .75,
                    color: Colors.white54,
                  ),
                ],
              ),
              Positioned(
                top: 115,
                left: 50,
                child: Container(
                  width: 300,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Your card balance',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              '\$240',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          '------------------------------------------------------',
                          style: TextStyle(color: Colors.green, fontSize: 18),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => TopUp()));
                              },
                              child: Column(
                                children: [
                                  Image(
                                    color: Colors.green,
                                    width: 25,
                                    height: 25,
                                    image:
                                        AssetImage('assets/images/top-up.png'),
                                  ),
                                  SizedBox(height: 3),
                                  Text('Top Up')
                                ],
                              ),
                            ),
                            SizedBox(width: 5),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Pay()));
                              },
                              child: Column(
                                children: [
                                  Image(
                                    color: Colors.green,
                                    width: 25,
                                    height: 25,
                                    image: AssetImage('assets/images/pay.png'),
                                  ),
                                  SizedBox(height: 3),
                                  Text(
                                    'Pay',
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 5),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Promo()));
                              },
                              child: Column(
                                children: [
                                  Image(
                                    color: Colors.green,
                                    width: 25,
                                    height: 25,
                                    image:
                                        AssetImage('assets/images/promo.png'),
                                  ),
                                  SizedBox(height: 3),
                                  Text('Promo')
                                ],
                              ),
                            ),
                            SizedBox(width: 5),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => History()));
                              },
                              child: Column(
                                children: [
                                  Image(
                                    color: Colors.green,
                                    width: 25,
                                    height: 25,
                                    image:
                                        AssetImage('assets/images/history.png'),
                                  ),
                                  SizedBox(height: 3),
                                  Text('History')
                                ],
                              ),
                            ),
                            SizedBox(width: 5),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 260,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'My Reward',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 170),
                          GestureDetector(
                            child: Text(
                              'View All',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.green),
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Promo()));
                            },
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/images/profile5.jpg'),
                              ),
                              SizedBox(width: 5),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Free1Coffee',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 150),
                                      RichText(
                                          text: TextSpan(
                                              text: '8',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.green),
                                              children: [
                                            TextSpan(
                                                text: '/10',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color:
                                                        Colors.grey.shade700))
                                          ])),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Buy 10 Coffees and get 1 Coffee for free',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'Favourite Place',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 170),
                          Text(
                            'View All',
                            style: TextStyle(fontSize: 16, color: Colors.green),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/coverImage.webp'),
                                    fit: BoxFit.fill)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Spacer(),
                                  Text(
                                    'Coffee Bean',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        'Bali, Indonesia',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/coverImage.webp'),
                                    fit: BoxFit.fill)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Spacer(),
                                  Text(
                                    'Coffee Bean',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        'Bali, Indonesia',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            'Popular Place',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 150),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: ((context) => Explore())));
                            },
                            child: Text(
                              'View All',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.green),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      HomePageReview(
                          imageName: 'assets/images/boardone.jpeg',
                          headerText: 'Coffe Bean - Resort Kuta',
                          number: '4.9',
                          commentOne: 'Coffee Bean - Kuta Resort is',
                          commentTwo: 'one of the best coffee cafes...'),
                      SizedBox(height: 20),
                      HomePageReview(
                          imageName: 'assets/images/boardtwo.jpg',
                          headerText: 'Coffe Bean - Mandalika\s',
                          number: '4.8',
                          commentOne: 'Coffee Bean - Mandalika\s is',
                          commentTwo: 'one of the best coffee cafes...'),
                      SizedBox(height: 20),
                      HomePageReview(
                          imageName: 'assets/images/boardthree.jpg',
                          headerText: 'Coffe Bean - Street View',
                          number: '4.7',
                          commentOne: 'Coffee Bean - Street View is',
                          commentTwo: 'one of the best coffee cafes...'),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
