import 'package:coffee_shop_mobile_app/booking/booking_Info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Card_Menu/home_Page.dart';
import '../widget/custom_button.dart';

class BillingInfo extends StatefulWidget {
  const BillingInfo({super.key});

  @override
  State<BillingInfo> createState() => _BillingInfoState();
}

class _BillingInfoState extends State<BillingInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => BookingInfo()));
          },
          child: Container(
            color: Colors.transparent,
            height: 70,
            width: double.infinity,
            child: Column(
              children: [
                CustomButton(
                  buttonText: 'Next',
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
          'Booking',
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
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Billing Info',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Step 1 of 3',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Text(
                'Please enter your billing info',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
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
                              borderSide:
                                  BorderSide(width: 0, style: BorderStyle.none),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0, style: BorderStyle.none),
                                borderRadius: BorderRadius.circular(10)),
                            hintText: 'Your name'),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Phone Number',
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
                              borderSide:
                                  BorderSide(width: 0, style: BorderStyle.none),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0, style: BorderStyle.none),
                                borderRadius: BorderRadius.circular(10)),
                            hintText: 'Phone Number'),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Address',
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
                              borderSide:
                                  BorderSide(width: 0, style: BorderStyle.none),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0, style: BorderStyle.none),
                                borderRadius: BorderRadius.circular(10)),
                            hintText: 'Address'),
                      ),
                      SizedBox(height: 10),
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
