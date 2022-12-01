import 'package:coffee_shop_mobile_app/Order/chatDriver.dart';
import 'package:coffee_shop_mobile_app/Order/map.dart';
import 'package:coffee_shop_mobile_app/widget/custom_feedback.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widget/custom_button.dart';

class FeedbackOne extends StatelessWidget {
  const FeedbackOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Coffee Beans',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '17th August, 06:50AM',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Container(
                    decoration: BoxDecoration(color: Colors.grey.shade500),
                    height: 1,
                    width: double.infinity),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'Give a rating?',
                    style: TextStyle(fontSize: 26),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      size: 40,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.star,
                      size: 40,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.star,
                      size: 40,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.star,
                      size: 40,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.star,
                      size: 40,
                      color: Colors.grey.shade200,
                    ),
                    SizedBox(width: 5),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(color: Colors.grey.shade500),
                  height: 1,
                  width: double.infinity,
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/profile1.jpg'),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Richard Lee',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'NMAX(AB 1234 CD)',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(color: Colors.grey.shade500),
                  height: 1,
                  width: double.infinity,
                ),
                SizedBox(height: 20),
                Text(
                  'Shipping Address',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 40,
                      color: Colors.green.shade600,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Return address',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'JI. Pegangsaan NO.45',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          decoration:
                              BoxDecoration(color: Colors.grey.shade600),
                          width: 2,
                          height: 5,
                        ),
                        SizedBox(height: 5),
                        Container(
                          decoration:
                              BoxDecoration(color: Colors.grey.shade600),
                          width: 2,
                          height: 8,
                        ),
                        SizedBox(height: 5),
                        Container(
                          decoration:
                              BoxDecoration(color: Colors.grey.shade600),
                          width: 2,
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 40,
                      color: Colors.green.shade800,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Recipient address',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'JI. Kemerdekaan NO.17',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(color: Colors.grey.shade500),
                  height: 1,
                  width: double.infinity,
                ),
                SizedBox(height: 20),
                Text(
                  'Shipping list',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'X1',
                          style: TextStyle(fontSize: 20, color: Colors.green),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Caramel Macchiato',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      ],
                    ),
                    Text(
                      'IDR 40.000',
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'X1',
                          style: TextStyle(fontSize: 20, color: Colors.green),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Vanilla Sweet Cream',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      ],
                    ),
                    Text(
                      'IDR 25.000',
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(color: Colors.grey.shade500),
                  height: 1,
                  width: double.infinity,
                ),
                SizedBox(height: 20),
                Text(
                  'Payment Details',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                CustomFeedBack(name: 'Total price', amount: 'IDR 65.000'),
                SizedBox(height: 20),
                CustomFeedBack(name: 'Delivery Fee', amount: 'IDR 10.000'),
                SizedBox(height: 20),
                CustomFeedBack(name: 'Packaging Fee', amount: 'IDR 5.000'),
                SizedBox(height: 20),
                CustomFeedBack(name: 'Promo Discount', amount: 'IDR -16.250'),
                SizedBox(height: 20),
                Text(
                    '-----------------------------------------------',
                    style: TextStyle(fontSize: 18,color: Colors.grey.shade200, fontWeight: FontWeight.bold),
                  ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Totoal Payment',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    Text(
                      'IDR 63.750',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 70,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Maps()));
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: Column(
                          children: [
                            CustomButton(
                              buttonText: 'Contact Coffee Bean',
                              backgroundColor: Colors.greenAccent,
                              textColor: Colors.white,
                              boxHeight: 50,
                              boxWidth: 350,
                            )
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
