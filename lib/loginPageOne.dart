import 'package:coffee_shop_mobile_app/HomePage/coverPlace.dart';
import 'package:coffee_shop_mobile_app/forgotPasswordEmail.dart';
import 'package:coffee_shop_mobile_app/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'forgotPasswordEmail.dart';

import 'createAccountOne.dart';

class LoginPageOne extends StatefulWidget {
  @override
  State<LoginPageOne> createState() => _LoginPageOneState();
}

class _LoginPageOneState extends State<LoginPageOne> {
  bool isHiddenPassword = true;
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Coffee',
                      style:
                          TextStyle(fontSize: 34, fontWeight: FontWeight.w600),
                    ),
                    Text('Been',
                        style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w600,
                            color: Colors.green))
                  ],
                ),
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
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
                            borderSide:
                                BorderSide(width: 0.5, color: Colors.grey),
                            borderRadius: BorderRadius.circular(50),
                          )),
                    ),
                    SizedBox(height: 20),
                    Text('Password',
                        style: TextStyle(color: Colors.grey, fontSize: 16)),
                    SizedBox(height: 10),
                    TextField(
                      obscureText: isHiddenPassword,
                      decoration: InputDecoration(
                          suffixIcon: InkWell(
                              onTap: _togglePasswordView,
                              child: Icon(Icons.visibility)),
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
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: checkBoxValue,
                              onChanged: (value) {
                                setState(() {
                                  checkBoxValue = value!;
                                });
                              },
                            ),
                            Text(
                              'Remember me',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        InkWell(
                          child: Text('Forgot password',
                              style: TextStyle(color: Colors.grey)),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ForgotPasswordEmail()));
                          },
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CreateAccountOne()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade100),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    width: 350,
                    height: 50,
                    child: Center(
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CoverPlace()));
                  },
                  child: CustomButton(
                    buttonText: 'Sign In',
                    backgroundColor: Colors.greenAccent,
                    textColor: Colors.white,
                    boxHeight: 50,
                    boxWidth: 350,
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 1,
                      width: 90,
                      decoration: BoxDecoration(color: Colors.grey.shade200),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'or continue with',
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 16),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 1,
                      width: 90,
                      decoration: BoxDecoration(color: Colors.grey.shade200),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade100),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.facebook_outlined,
                          color: Colors.blue,
                          size: 40.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade100),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.apple,
                          color: Colors.black,
                          size: 40.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade100),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.facebook_outlined,
                          color: Colors.blue,
                          size: 40.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
