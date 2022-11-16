import 'package:coffee_shop_mobile_app/registerThree.dart';
import 'package:coffee_shop_mobile_app/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterTwo extends StatefulWidget {
  @override
  State<RegisterTwo> createState() => _RegisterTwoState();
}

class _RegisterTwoState extends State<RegisterTwo> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: 70,
        child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RegisterThree()));
            },
            child: Container(
              height: 50,
              width: double.infinity,
              child: Column(
                children: [
                  CustomButton(
                    buttonText: 'Create Account',
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
        child: Container(
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
                    'Your Email',
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 0.5, color: Colors.grey),
                            borderRadius: BorderRadius.circular(50)),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.5, color: Colors.grey),
                          borderRadius: BorderRadius.circular(50),
                        )),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Checkbox(
                          value: checkBoxValue,
                          onChanged: (value) {
                            setState(() {
                              checkBoxValue = value!;
                            });
                          }),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text('''
I would like to receive marketing and
policy information from coffee bean.''',
                            style: TextStyle(
                                color: Colors.grey.shade400, fontSize: 16)),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
