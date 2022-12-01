import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomPromo extends StatelessWidget {
  CustomPromo({
    required this.imageName,
    required this.header,
    required this.rating,
    required this.comment,
    required this.countDown,
  });
  String imageName;
  String header;
  bool rating;
  String comment;
  String countDown;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imageName),
            ),
            SizedBox(width: 15),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        header,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      rating
                          ? RichText(
                              text: TextSpan(
                                  text: '8',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.green),
                                  children: [
                                  TextSpan(
                                      text: '/10',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey.shade700))
                                ]))
                          : Container(),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    comment,
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(
                        Icons.timelapse,
                        color: Colors.red,
                      ),
                      SizedBox(width: 5),
                      Text(
                        countDown,
                        style: TextStyle(fontSize: 16, color: Colors.red),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
