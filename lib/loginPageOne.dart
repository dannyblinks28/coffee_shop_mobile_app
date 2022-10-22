import 'package:coffee_shop_mobile_app/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
        child: Container(
          width: double.infinity,
          height: double.infinity,
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
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.w600),
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
                      Text(
                        'Forgot password',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade100),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: 350,
                height: 50,
                child: Center(
                  child: Text(
                    'Create Account',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(height: 10),
              CustomButton(
                buttonText: 'Sign In',
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
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 1,
                    width: 90,
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                  ),
                ],
              ),
              Row()
            ],
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
