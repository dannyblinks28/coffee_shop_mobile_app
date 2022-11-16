import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomReview extends StatelessWidget {
  CustomReview(
      {required this.textName,
      required this.textDate,
      required this.textPosition,
      required this.textComment,
      required this.nameImage,
      super.key});
  String textName;
  String textDate;
  String textPosition;
  String textComment;
  String nameImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(nameImage),
            ),
            SizedBox(width: 20),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        textName,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 60),
                      Text(
                        textDate,
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        textPosition,
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(width: 60),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 17,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 17,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 17,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 17,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 17,
                            color: Colors.grey,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 25),
                  Text(textComment),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
