import 'package:coffee_shop_mobile_app/Card_Menu/promo.dart';
import 'package:coffee_shop_mobile_app/Reward/detail.dart';
import 'package:coffee_shop_mobile_app/widget/custom_promo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Reward extends StatelessWidget {
  const Reward({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text(
                    'Attractive gift for you',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Carry out the missions and enjoy the rewards',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/gift.jpg',
                            width: 50,
                            height: 50,
                          ),
                          SizedBox(width: 5),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '350 XP more to get rewards',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10),
                                LinearPercentIndicator(
                                  barRadius: Radius.circular(10),
                                  width: 230,
                                  lineHeight: 10,
                                  percent: 0.7,
                                  progressColor: Colors.green,
                                  backgroundColor: Colors.grey,
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_right,
                            size: 30,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    child: GridView(
                        children: [
                          Container(
                            height: 500,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Colors.grey.shade300, width: 2)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '11',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.arrow_right,
                                        size: 30,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Voucher',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  LinearPercentIndicator(
                                    barRadius: Radius.circular(10),
                                    width: 140,
                                    lineHeight: 5,
                                    percent: 0.7,
                                    progressColor: Colors.green,
                                    backgroundColor: Colors.grey,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '5 will expire',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 500,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Colors.grey.shade300, width: 2)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '17',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.arrow_right,
                                        size: 30,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Missions',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  LinearPercentIndicator(
                                    barRadius: Radius.circular(10),
                                    width: 140,
                                    lineHeight: 5,
                                    percent: 0.7,
                                    progressColor: Colors.green,
                                    backgroundColor: Colors.grey,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '3 will expire',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.5,
                            crossAxisSpacing: 15)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Voucher for you',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) => Detail())));
                        },
                        child: Text(
                          'View All',
                          style: TextStyle(fontSize: 16, color: Colors.green),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomPromo(
                      imageName: 'assets/images/profile1.jpg',
                      header: '25% discount for all menus',
                      rating: false,
                      comment: '25% discount on all menus during...',
                      countDown: 'Ends in 1 Days'),
                  SizedBox(height: 10),
                  Text('Misson for you',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      )),
                  SizedBox(height: 10),
                  CustomPromo(
                      imageName: 'assets/images/profile3.jpg',
                      header: 'Buy 10 coffee',
                      rating: true,
                      comment: 'Buy 10 coffee and get 1 Coffee for free',
                      countDown: 'Ends in 12 hours'),
                  SizedBox(height: 10),
                  CustomPromo(
                      imageName: 'assets/images/profile4.jpg',
                      header: 'Hang out 1 hour',
                      rating: true,
                      comment: 'Hang out and drink coffee with your...',
                      countDown: 'Ends in 12 hours'),
                  SizedBox(height: 10),
                  CustomPromo(
                      imageName: 'assets/images/profile4.jpg',
                      header: 'Hang out 2 hour',
                      rating: true,
                      comment: 'Hang out and drink coffee with your...',
                      countDown: 'Ends in 3 Days')
                ],
              ),
            ),
          ),
        ));
  }
}
