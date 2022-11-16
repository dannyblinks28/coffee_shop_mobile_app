import 'package:coffee_shop_mobile_app/Card_Menu/home_Page.dart';
import 'package:coffee_shop_mobile_app/widget/custom_promo.dart';
import 'package:flutter/material.dart';

class Promo extends StatelessWidget {
  const Promo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        title: Text(
          'Promo',
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
        actions: [
          Icon(
            Icons.more_horiz,
            color: Colors.black,
            size: 30,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hottest Promo',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                CustomPromo(
                  imageName: 'assets/images/profile1.jpg',
                  header: 'Free 1 Coffee',
                  rating: true,
                  comment: 'Buy 10 Coffees and get 1 Coffee for free',
                  countDown: 'Ends in 12 hours',
                ),
                SizedBox(height: 20),
                CustomPromo(
                  imageName: 'assets/images/profile2.jpg',
                  header: 'Buy 2 get 1',
                  rating: false,
                  comment: 'Buy 2 Coffees and get 1 Coffee for free',
                  countDown: 'Ends in 12 hours',
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Recommendation Promo',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 50),
                    Text(
                      'View All',
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                CustomPromo(
                  imageName: 'assets/images/profile3.jpg',
                  header: '25% discount up to IDR 20.00',
                  rating: false,
                  comment: 'Buy Coffee and get discount up to 25%',
                  countDown: 'Ends in 1 Days',
                ),
                SizedBox(height: 20),
                CustomPromo(
                  imageName: 'assets/images/profile4.jpg',
                  header: '35% discount up to IDR 10.00',
                  rating: false,
                  comment: 'Buy Coffee and get discount up to 35%',
                  countDown: 'Ends in 2 Days',
                ),
                SizedBox(height: 20),
                CustomPromo(
                  imageName: 'assets/images/profile5.jpg',
                  header: '40% discount up to IDR 35.00',
                  rating: false,
                  comment: 'Buy Coffee and get discount up to 50%',
                  countDown: 'Ends in 2 Days',
                ),
                SizedBox(height: 20),
                CustomPromo(
                  imageName: 'assets/images/profile3.jpg',
                  header: '50% discount up to IDR 50.00',
                  rating: false,
                  comment: 'Buy Coffee and get discount up to 50%',
                  countDown: 'Ends in 12hours',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
