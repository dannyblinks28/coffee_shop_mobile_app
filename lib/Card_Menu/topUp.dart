import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../booking/billing_info.dart';
import '../widget/custom_button.dart';
import 'home_Page.dart';

class TopUp extends StatefulWidget {
  const TopUp({super.key});

  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  bool checkBoxValue = false;
  String payment = 'card';
  bool isHiddenPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        title: Text(
          'Top Up',
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
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: payment=='card',
                                  onChanged: (value) {
                                    setState(() {
                                      payment = 'card';
                                    });
                                  },
                                ),
                                Text(
                                  'Credit Card',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
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
                        Text(
                          'Card Number',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0, style: BorderStyle.none),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: 'Card Number'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Card Holder',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0, style: BorderStyle.none),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: 'Card Holder'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Expration Date',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0, style: BorderStyle.none),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: 'DD/MMYY'),
                        ),
                        //here
                        SizedBox(height: 10),
                        Text(
                          'CVC',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0, style: BorderStyle.none),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: 'CVC'),
                        ),
                      ],
                    ),
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
                              value: payment=='paypal',
                              splashRadius: 40,
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
                SizedBox(height: 20),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BillingInfo()));
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
