import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomProfile extends StatelessWidget {
  CustomProfile(
      {super.key,
      required this.icon,
      required this.header,
      required this.comment});
  IconData icon;
  String header;
  String comment;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(width: 1, color: Colors.grey)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                icon,
                color: Colors.grey,
                size: 30,
              ),
            )),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              header,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(comment, style: TextStyle(fontSize: 18, color: Colors.grey)),
          ],
        )
      ],
    );
  }
}
