import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomCoffeeSearch extends StatelessWidget {
  CustomCoffeeSearch({required this.name, super.key});
  String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.timer_sharp,
              size: 30,
              color: Colors.grey.shade300,
            ),
            SizedBox(width: 20),
            Text(
              name,
              style: TextStyle(fontSize: 18, color: Colors.grey.shade300),
            )
          ],
        ),
        Icon(
          Icons.cancel_outlined,
          size: 30,
          color: Colors.grey.shade300,
        )
      ],
    );
  }
}
