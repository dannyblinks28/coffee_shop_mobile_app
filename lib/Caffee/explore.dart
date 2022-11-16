import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Card_Menu/homePageReview.dart';
import '../Card_Menu/home_Page.dart';
import 'coffeeSearch.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        title: Text(
          'Search',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomePage())),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CoffeeSearch()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            size: 30,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Coffee Bean',
                            style: TextStyle(fontSize: 17),
                          )
                        ],
                      ),
                    ),
                  ),
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
                    headerText: 'Coffe Bean - Mandalika\'s',
                    number: '4.8',
                    commentOne: 'Coffee Bean - Mandalika\'s is',
                    commentTwo: 'one of the best coffee cafes...'),
                SizedBox(height: 20),
                HomePageReview(
                    imageName: 'assets/images/boardthree.jpg',
                    headerText: 'Coffe Bean - Street View',
                    number: '4.7',
                    commentOne: 'Coffee Bean - Street View is',
                    commentTwo: 'one of the best coffee cafes...'),
                SizedBox(height: 20),
                HomePageReview(
                    imageName: 'assets/images/boardone.jpeg',
                    headerText: 'Coffee Bean - Town Old',
                    number: '4,7',
                    commentOne: 'Coffee Bean Town Old is one',
                    commentTwo: 'of the best coffee cafes...'),
                SizedBox(height: 20),
                HomePageReview(
                    imageName: 'assets/images/boardtwo.jpg',
                    headerText: 'Coffee Bean - Pandawa\'s',
                    number: '4,7',
                    commentOne: 'Coffee Bean - Pandawa\'s is one',
                    commentTwo: 'of the best coffee cafe in...'),
                SizedBox(height: 20),
                HomePageReview(
                    imageName: 'assets/images/boardthree.jpg',
                    headerText: 'Coffee Bean - Nusa Penida',
                    number: '4,7',
                    commentOne: 'Coffee Bean - Nusa Penida is one',
                    commentTwo: 'of the best coffee cafe in...')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
