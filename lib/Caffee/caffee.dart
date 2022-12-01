import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Card_Menu/homePageReview.dart';
import 'explore.dart';

class Caffee extends StatelessWidget {
  const Caffee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Text('Find your best cafe',
                    style:
                        TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(
                  'Enjoy the love of the best coffee taste',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(Icons.search,
                            size: 30, color: Colors.grey.shade300),
                        SizedBox(width: 5),
                        Text(
                          'Search Caffee',
                          style: TextStyle(
                              fontSize: 17, color: Colors.grey.shade300),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Favourite Place',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 150),
                    Text(
                      'View All',
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    )
                  ],
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/coverImage.webp'),
                                fit: BoxFit.fill)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Spacer(),
                              Text(
                                'Coffee Bean',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 20),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Bali, Indonesia',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/coverImage.webp'),
                                fit: BoxFit.fill)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Spacer(),
                              Text(
                                'Coffee Bean',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 20),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Bali, Indonesia',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Popular Place',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 150),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => Explore())));
                      },
                      child: Text(
                        'View All',
                        style: TextStyle(fontSize: 16, color: Colors.green),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                HomePageReview(
                    imageName: 'assets/images/boardone.jpeg',
                    headerText: 'Coffe Bean - Resort Kuta',
                    number: '4.9',
                    commentOne: 'Coffee Bean - Kuta Resort is',
                    commentTwo: 'one of the best coffee cafes...'),
                SizedBox(height: 20),
                HomePageReview(
                    imageName: 'assets/images/boardtwo.jpg',
                    headerText: 'Coffe Bean - Mandalika\s',
                    number: '4.8',
                    commentOne: 'Coffee Bean - Mandalika\s is',
                    commentTwo: 'one of the best coffee cafes...'),
                SizedBox(height: 20),
                HomePageReview(
                    imageName: 'assets/images/boardthree.jpg',
                    headerText: 'Coffe Bean - Street View',
                    number: '4.7',
                    commentOne: 'Coffee Bean - Street View is',
                    commentTwo: 'one of the best coffee cafes...'),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
