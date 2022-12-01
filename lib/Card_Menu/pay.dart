import 'package:coffee_shop_mobile_app/booking/billing_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../registerFive.dart';
import '../widget/custom_button.dart';
import 'home_Page.dart';

class Pay extends StatefulWidget {
  const Pay({super.key});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  bool isHiddenPassword = true;
  String payment = 'card';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => BillingInfo()));
          },
          child: Container(
            color: Colors.transparent,
            height: 70,
            width: double.infinity,
            child: Column(
              children: [
                CustomButton(
                  buttonText: 'Pay Now',
                  backgroundColor: Colors.greenAccent,
                  textColor: Colors.white,
                  boxHeight: 50,
                  boxWidth: 350,
                )
              ],
            ),
          )),
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        title: Text(
          'Pay',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          Icon(
            Icons.more_horiz,
            color: Colors.black,
            size: 30,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Send Payment to:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Container(
                  height: 200,
                  child: GridView(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/profile3.jpg'),
                              ),
                              Text(
                                'Angel',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.cancel_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/profile2.jpg'),
                              ),
                              Text(
                                'Clack',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.cancel_outlined,
                              )
                            ],
                          ),
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade200),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/profile1.jpg'),
                              ),
                              Text(
                                'Cindy',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.cancel_outlined,
                              )
                            ],
                          ),
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade200),
                              borderRadius: BorderRadius.circular(20)),
                        )
                      ],
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 3,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15)),
                ),
                Text(
                  'Or enter the number phone here',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.5, color: Colors.grey),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.5, color: Colors.grey),
                          borderRadius: BorderRadius.circular(50)),
                      hintText: '+62 81234567890'),
                ),
                SizedBox(height: 20),
                Text('Choose Nominal Payment',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                Container(
                  height: 150,
                  child: GridView(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              'IDR 50,000',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              'IDR 100,000',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              'IDR 200,000',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              'IDR 250,000',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 3,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15)),
                ),
                Text(
                  'Or enter the top up nominal here',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.5, color: Colors.grey),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.5, color: Colors.grey),
                          borderRadius: BorderRadius.circular(50)),
                      hintText: 'Minimum IDR 10,000'),
                ),
                SizedBox(height: 20),
                Text('Choose Payment Method',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Checkbox(
                              value: payment == 'Credit card',
                              onChanged: (value) {
                                setState(() {
                                  payment = 'Credit card';
                                });
                              },
                            ),
                          ),
                          Text(
                            'Credit Card',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/images/creditCard.png',
                            height: 70,
                            width: 70,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Checkbox(
                              value: payment == 'paypal',
                              onChanged: (value) {
                                setState(() {
                                  payment = 'paypal';
                                });
                              },
                            ),
                          ),
                          Text(
                            'Paypal',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/images/paypal.png',
                            height: 70,
                            width: 70,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Checkbox(
                              value: payment == 'bitcoin',
                              onChanged: (value) {
                                setState(() {
                                  payment = 'bitcoin';
                                });
                              },
                            ),
                          ),
                          Text(
                            'Bitcoin',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/images/bitcoin.png',
                            height: 70,
                            width: 70,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 70)
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _togglePaymentView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
