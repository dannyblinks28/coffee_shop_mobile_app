import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomChatDriver extends StatefulWidget {
  CustomChatDriver(
      {required this.text, required this.dateTime, required this.isSentByMe});
  String text;
  String dateTime;
  bool isSentByMe;

  @override
  State<CustomChatDriver> createState() => _CustomChatDriverState();
}

class _CustomChatDriverState extends State<CustomChatDriver> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          widget.isSentByMe ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              widget.text,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Text(
          widget.dateTime,
          style: TextStyle(fontSize: 16, color: Colors.grey),
        )
      ],
    );
  }
}
