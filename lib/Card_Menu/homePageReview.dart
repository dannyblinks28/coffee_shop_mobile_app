import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageReview extends StatelessWidget {
  HomePageReview(
      {required this.imageName,
      required this.headerText,
      required this.number,
      required this.commentOne,
      required this.commentTwo,
      super.key});
  String imageName;
  String headerText;
  String number;
  String commentOne;
  String commentTwo;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    imageName,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      headerText,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
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
                        ),
                        SizedBox(width: 3),
                        Text(number)
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      commentOne,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      commentTwo,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
