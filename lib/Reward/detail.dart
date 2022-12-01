import 'package:coffee_shop_mobile_app/Card_Menu/pay.dart';
import 'package:coffee_shop_mobile_app/Card_Menu/promo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/custom_button.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Pay()));
          },
          child: Container(
            color: Colors.transparent,
            height: 70,
            width: double.infinity,
            child: Column(
              children: [
                CustomButton(
                  buttonText: 'Use Now',
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
          'Voucher',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '25% discount for all menus',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.timelapse_rounded,
                    size: 30,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Voucher will end within 1 day',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  )
                ],
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(color: Colors.grey.shade300),
                width: double.infinity,
                height: 1,
              ),
              SizedBox(height: 20),
              Text(
                'Terms and Conditions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '1. Vouchers are only valid in Indonesia.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '2. Vouchers can only be used once.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '3. Vouchers can only be valid using the Coffee Pay payment method.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '4. Vouchers can only be used from 07.00am to 09.00pm.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
