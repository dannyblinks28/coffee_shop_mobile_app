import 'package:coffee_shop_mobile_app/HomePage/coverPlace.dart';
import 'package:coffee_shop_mobile_app/loginPageOne.dart';
import 'package:coffee_shop_mobile_app/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterFive extends StatelessWidget {
  const RegisterFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: 70,
        child: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CoverPlace()));
            },
            child: Container(
              height: 50,
              width: double.infinity,
              child: Column(
                children: [
                  CustomButton(
                    buttonText: 'Let\'s Explore',
                    backgroundColor: Colors.greenAccent,
                    textColor: Colors.white,
                    boxHeight: 50,
                    boxWidth: 350,
                  )
                ],
              ),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Spacer(),
              Center(
                  child:
                      Image(image: AssetImage('assets/images/successful.jpg'))),
              SizedBox(height: 20),
              Column(
                children: [
                  Text('Successfully',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w600)),
                  Text('created an account',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w600)),
                  SizedBox(height: 20),
                  Text(
                    'After this you can explore our services',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Text(' and enjoy our products. Have fun and enjoy it!',
                      style: TextStyle(fontSize: 16, color: Colors.grey))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
