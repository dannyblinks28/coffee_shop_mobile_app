import 'package:coffee_shop_mobile_app/registerTwo.dart';
import 'package:coffee_shop_mobile_app/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateAccountOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: 70,
        child: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => RegisterTwo()));
            },
            child: Container(
              height: 50,
              width: double.infinity,
              child: Column(
                children: [
                  CustomButton(
                    buttonText: 'Input Account',
                    backgroundColor: Colors.greenAccent,
                    textColor: Colors.white,
                    boxHeight: 50,
                    boxWidth: 350,
                  )
                ],
              ),
            )),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              'Create New Account',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
            ),
            Text(
              'Input Your Name',
              style: TextStyle(fontSize: 16, color: Colors.grey.shade400),
            ),
            SizedBox(height: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'First Name',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.5, color: Colors.grey),
                          borderRadius: BorderRadius.circular(50)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.5, color: Colors.grey),
                        borderRadius: BorderRadius.circular(50),
                      )),
                ),
                SizedBox(height: 20),
                Text(
                  'Last Name',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.5, color: Colors.grey),
                          borderRadius: BorderRadius.circular(50)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.5, color: Colors.grey),
                        borderRadius: BorderRadius.circular(50),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
