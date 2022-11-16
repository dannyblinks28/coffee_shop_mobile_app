import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.boxWidth,
    required this.boxHeight,
    this.buttonText,
    required this.backgroundColor,required this.textColor,
    Key? key,
  }) : super(key: key);
  String? buttonText;
  double boxWidth;
  double boxHeight;
  Color backgroundColor;
  Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      width: boxWidth,
      height: boxHeight,
      child: Center(
        child: Text(
          buttonText ?? "",
          style: TextStyle(
              color: textColor, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
