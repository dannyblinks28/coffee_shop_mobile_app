import 'package:coffee_shop_mobile_app/loginPageOne.dart';
import 'package:coffee_shop_mobile_app/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool isHiddenPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => LoginPageOne()));
          },
          child: Container(
            height: 70,
            width: double.infinity,
            child: Column(
              children: [
                CustomButton(
                  buttonText: 'Save',
                  backgroundColor: Colors.greenAccent,
                  textColor: Colors.white,
                  boxHeight: 50,
                  boxWidth: 350,
                )
              ],
            ),
          )),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text(
                    'Create New Password',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Input Your New Password',
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade400),
                  ),
                  SizedBox(height: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password',
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 16),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        obscureText: isHiddenPassword,
                        decoration: InputDecoration(
                            suffixIcon: InkWell(
                              onTap: _togglePasswordView,
                              child: isHiddenPassword
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility),
                            ),
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
                      Text(
                        'Password',
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 16),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        obscureText: isHiddenPassword,
                        decoration: InputDecoration(
                            suffixIcon: InkWell(
                              onTap: _togglePasswordView,
                              child: isHiddenPassword
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility),
                            ),
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
                      SizedBox(height: 15),
                      Text(
                        'Your password must include at least one symbol and be 8 or more characters long',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }

  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
