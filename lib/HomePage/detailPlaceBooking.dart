import 'package:coffee_shop_mobile_app/HomePage/history.dart';
import 'package:coffee_shop_mobile_app/Nav_pages/home_caffee_reward_profile.dart';
import 'package:coffee_shop_mobile_app/widget/custom_button.dart';
import 'package:coffee_shop_mobile_app/widget/custom_review.dart';
import 'package:coffee_shop_mobile_app/widget/custom_second_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';

import '../Card_Menu/home_Page.dart';

class DetailPlaceBooking extends StatefulWidget {
  @override
  State<DetailPlaceBooking> createState() => _DetailPlaceBookingState();
}

class _DetailPlaceBookingState extends State<DetailPlaceBooking>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        elevation: 0,
        title: Text(
          'Detail Place',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 30,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.bookmark,
              color: Colors.green,
              size: 30,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.white60),
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.all(1),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/detailPlaceBooking.jpeg',
                        fit: BoxFit.fill,
                        width: double.infinity,
                        height: 150,
                      ),
                    )),
                SizedBox(height: 10),
                Text(
                  'Coffee Bean',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 34,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.black,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Bali, Indonesia',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      '100+ people has explored',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Spacer(),
                    Stack(
                      children: [
                        FlutterImageStack(
                          imageSource: ImageSource.Asset,
                          imageList: [
                            'assets/images/profile1.jpg',
                            'assets/images/profile2.jpg',
                            'assets/images/profile3.jpg',
                            'assets/images/profile4.jpg',
                            'assets/images/profile5.jpg'
                          ],
                          totalCount: 5,
                          itemCount: 5,
                          itemRadius: 40,
                          itemBorderColor: Colors.white,
                          itemBorderWidth: 3,
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: double.maxFinite,
                  height: 80,
                  child: TabBar(
                      labelPadding: const EdgeInsets.only(bottom: 0),
                      controller: _tabController,
                      labelColor: Colors.green,
                      unselectedLabelColor: Colors.grey,
                      indicatorWeight: 3.0,
                      indicatorColor: Colors.green,
                      tabs: [
                        Tab(
                          text: 'Detail Caffe',
                        ),
                        Tab(
                          text: 'Detail Caffe',
                        )
                      ]),
                ),
                Container(
                  width: double.maxFinite,
                  height: 750,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Capacity',
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    '7 Remaining',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20)),
                              )
                            ],
                          ),
                          Text(
                            'Description',
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Bali is an island in Indonesia known for its verdant volcanoes, unique rice terraces, beaches, and beautiful corel reefs. Before becoming a tourist attraction, Kutawas a trading post where local products were traded tobuyers outside Bali.',
                            style: TextStyle(fontSize: 16, height: 1.5),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                'Review',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(width: 25),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                width: 50,
                                height: 30,
                                child: Center(
                                  child: Text(
                                    '13',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                          SizedBox(height: 20),
                          CustomReview(
                              textName: 'Alex Stanton',
                              textDate: '21 July 2022',
                              textPosition: 'CEO at Bukalapak',
                              textComment:
                                  'We are very happy with the services of the Coffee Shop Application. Coffee Shop',
                              nameImage: 'assets/images/profile1.jpg'),
                          SizedBox(height: 20),
                          CustomReview(
                              textName: 'Skylar Dias',
                              textDate: '20 July 2022',
                              textPosition: 'CEO at Amazon',
                              textComment:
                                  'We are greatly helped by the Coffee Shop. Application Service. Coffee Shop has value...',
                              nameImage: 'assets/images/profile4.jpg'),
                          SizedBox(height: 20),
                          Center(
                            child: Container(
                              child: Text(
                                'Show All ^',
                                style:
                                    TextStyle(fontSize: 20, color: Colors.grey),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'IDR 100.000',
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 24),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '/Hour',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HomeCaffeeRewardProfile()));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    width: 150,
                                    height: 50,
                                    child: Center(
                                      child: Text(
                                        'Book Now',
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ))
                            ],
                          )
                        ],
                      ),
                      //for the second screen
                      Column(
                        children: [
                          CustomSecondTab(
                              imageName: 'assets/images/profile4.jpg',
                              creamName: 'Vanilla Sweet Cream',
                              creamPrice: 'IDR 25.000',
                              textShown: true),
                          SizedBox(height: 20),
                          CustomSecondTab(
                              imageName: 'assets/images/profile2.jpg',
                              creamName: 'Salted Caramel Latte',
                              creamPrice: 'IDR 30.000',
                              textShown: false),
                          SizedBox(height: 20),
                          CustomSecondTab(
                              imageName: 'assets/images/profile5.jpg',
                              creamName: 'Caramel Macchiato',
                              creamPrice: 'IDR 40.000',
                              textShown: true),
                          SizedBox(height: 20),
                          CustomSecondTab(
                              imageName: 'assets/images/profile1.jpg',
                              creamName: 'Mocha Freppuccino',
                              creamPrice: 'IDR 35.000',
                              textShown: false),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'IDR 65.000',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 24),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => History()));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    width: 150,
                                    height: 50,
                                    child: Center(
                                      child: Text(
                                        'Order Now',
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
