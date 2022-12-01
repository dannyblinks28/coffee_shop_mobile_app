import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomSecondTab extends StatelessWidget {
  CustomSecondTab(
      {super.key,
      required this.imageName,
      required this.creamName,
      required this.creamPrice,
      required this.textShown});
  String imageName;
  String creamName;
  String creamPrice;
  bool textShown;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 500,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(imageName),
                  ),
                ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      creamName,
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                    SizedBox(height: 5),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          creamPrice,
                          style: TextStyle(color: Colors.green, fontSize: 22),
                        ),
                        SizedBox(width: 100),
                        textShown
                            ? Text(
                                'X1',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 22),
                              )
                            : Container()
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
