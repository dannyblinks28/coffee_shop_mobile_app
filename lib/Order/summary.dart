import 'package:coffee_shop_mobile_app/widget/custom_second_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widget/custom_button.dart';
import '../widget/custom_feedback.dart';
import 'map.dart';

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Summary',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 30,
                          color: Colors.green.shade800,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shippng address',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'JI. Kemerdekaan NO.17',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Icon(
                      Icons.more_vert,
                      color: Colors.black,
                      size: 30,
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    prefixIcon: Icon(Icons.note_alt),
                    hintText: 'Notes for drivers...',
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 0, color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 0, color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(color: Colors.grey.shade200),
                width: double.infinity,
                height: 2,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shopping list',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Wrap(
                      children: [
                        Icon(Icons.add, size: 20, color: Colors.green),
                        Text(
                          'Add more',
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 5),
              Text(
                '-------------------------------------------------',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade200,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              CustomSecondTab(
                  imageName: 'assets/images/profile4.jpg',
                  creamName: 'Vanilla Sweet Cream',
                  creamPrice: 'IDR 25.000',
                  textShown: true),
              SizedBox(height: 10),
              CustomSecondTab(
                  imageName: 'assets/images/profile1.jpg',
                  creamName: 'Caramel Macchiato',
                  creamPrice: 'IDR 40.000',
                  textShown: true),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(color: Colors.grey.shade200),
                width: double.infinity,
                height: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment Details',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '-----------------------------------------------',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade200,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    CustomFeedBack(name: 'Total price', amount: 'IDR 65.000'),
                    SizedBox(height: 20),
                    CustomFeedBack(name: 'Delivery Fee', amount: 'IDR 10.000'),
                    SizedBox(height: 20),
                    CustomFeedBack(name: 'Packaging Fee', amount: 'IDR 5.000'),
                    SizedBox(height: 20),
                    CustomFeedBack(
                        name: 'Promo Discount', amount: 'IDR -16.250'),
                    SizedBox(height: 20),
                    Text(
                      '-----------------------------------------------',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade200,
                          fontWeight: FontWeight.bold),
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
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      '-----------------------------------------------',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade200,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Pay with',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey),
                            ),
                            SizedBox(width: 10),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('Coffee Pay',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                              ),
                            )
                          ],
                        ),
                        Text(
                          'IDR 63.750',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'IDR 63.750',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 10),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text('Coffee Pay',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                              ),
                            )
                          ],
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                          size: 30,
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 70,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Maps()));
                          },
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            child: Column(
                              children: [
                                CustomButton(
                                  buttonText: 'Order Now',
                                  backgroundColor: Colors.green,
                                  textColor: Colors.white,
                                  boxHeight: 70,
                                  boxWidth: 350,
                                )
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
