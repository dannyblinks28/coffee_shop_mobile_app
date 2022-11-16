import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../HomePage/coverPlace.dart';
import '../widget/custom_button.dart';

class PaymentMethodOne extends StatelessWidget {
  const PaymentMethodOne({super.key});

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
                    buttonText: 'Book Now',
                    backgroundColor: Colors.greenAccent,
                    textColor: Colors.white,
                    boxHeight: 50,
                    boxWidth: 350,
                  )
                ],
              ),
            )),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image(
                  image: AssetImage('assets/images/successful.jpg'),
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Text('Successfully',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w600)),
                  Text('Booked a cafe',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w600)),
                  SizedBox(height: 20),
                  Text(
                    'You can use the word according',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(height: 5),
                  Text(' to the agreed date!',
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
