import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomFeedBack extends StatelessWidget {
  CustomFeedBack({required this.name, required this.amount});
  String name;
  String amount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyle(fontSize: 20, color: Colors.grey),
        ),
        Text(
          amount,
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ],
    );
  }
}
