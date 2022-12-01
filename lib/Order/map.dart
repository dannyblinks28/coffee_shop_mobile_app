import 'package:coffee_shop_mobile_app/Order/chatDriver.dart';
import 'package:coffee_shop_mobile_app/Order/summary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_widget/google_maps_widget.dart';

class Maps extends StatelessWidget {
  Maps({super.key});

  @override
  final mapsWidgetController = GlobalKey<GoogleMapsWidgetState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Customer service',
              style: TextStyle(color: Colors.black54),
            ),
          )
        ],
      ),
      body: Stack(children: [
        Expanded(
          child: GoogleMapsWidget(
            apiKey: 'AIzaSyAuyWqprlky2Kh2oqkCEySL3xYSSETZlko',
            sourceLatLng: LatLng(
              40.484000837597925,
              -3.369978368282318,
            ),
            destinationLatLng: LatLng(
              40.48017307700204,
              -3.3618026599287987,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 500),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Arrived at 4:50pm',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text('Being delivered')
                            ],
                          ),
                          Icon(
                            Icons.delivery_dining_sharp,
                            size: 30,
                            color: Colors.green,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.dry_cleaning_rounded,
                              size: 30, color: Colors.green),
                          SizedBox(width: 5),
                          Container(
                              decoration: BoxDecoration(color: Colors.green),
                              width: 110,
                              height: 4),
                          SizedBox(width: 5),
                          Icon(Icons.bus_alert_sharp,
                              size: 30, color: Colors.green),
                          Container(
                              decoration: BoxDecoration(color: Colors.green),
                              width: 110,
                              height: 4),
                          SizedBox(width: 5),
                          Icon(Icons.work, size: 30, color: Colors.grey),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile1.jpg'),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Richard Lee',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'NMAX(AB1234 CD)',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black54),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: ((context) => ChatDriver())));
                            },
                            child: Container(
                              width: 250,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.chat_outlined,
                                      size: 30,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      'Chat with driver',
                                      style: TextStyle(color: Colors.black54),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.phone,
                                size: 30,
                                color: Colors.grey,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        'Coffee Beans - Bali Indonesia',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                          decoration: BoxDecoration(color: Colors.grey),
                          width: double.infinity,
                          height: 1),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'X1',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.green),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Caramel Macchiato',
                                style:
                                    TextStyle(fontSize: 19, color: Colors.grey),
                              ),
                            ],
                          ),
                          Text(
                            'IDR 40.000',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'X1',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.green),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Vanilla Sweet Cream',
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ],
                          ),
                          Text(
                            'IDR 25.000',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                          decoration: BoxDecoration(color: Colors.grey),
                          width: double.infinity,
                          height: 1),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: ((context) => Summary())));
                              },
                              child: Text(
                                'View order summary',
                                style: TextStyle(color: Colors.green),
                              )),
                          Icon(
                            Icons.arrow_right_alt,
                            color: Colors.grey,
                            size: 30,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shipping Address',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(color: Colors.grey),
                        height: 1,
                        width: double.infinity,
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 30,
                            color: Colors.green.shade600,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Return address',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'JI. Pegangsaan NO.45',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                decoration:
                                    BoxDecoration(color: Colors.grey.shade600),
                                width: 2,
                                height: 5,
                              ),
                              SizedBox(height: 5),
                              Container(
                                decoration:
                                    BoxDecoration(color: Colors.grey.shade600),
                                width: 2,
                                height: 8,
                              ),
                              SizedBox(height: 5),
                              Container(
                                decoration:
                                    BoxDecoration(color: Colors.grey.shade600),
                                width: 2,
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 30,
                            color: Colors.green.shade800,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Recipient address',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'JI. Kemerdekaan NO.17',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
