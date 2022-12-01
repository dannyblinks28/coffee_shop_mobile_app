import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Card_Menu/home_Page.dart';
import '../widget/custom_history.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        elevation: 0,
        title: Text(
          'History',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
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
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recent Activity',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20),
                //should be put here
                CustomHistory(
                    imageName: 'assets/images/moneyIn.jpg',
                    header: 'Top Up IDR 200.00',
                    price: false,
                    comment:
                        'Congratulations, you have successfully made a top up of IDR 200.00',
                    date: '22 August 2022, 04:00PM',
                    priceFigure: ""),
                SizedBox(height: 10),
                CustomHistory(
                    imageName: 'assets/images/moneySent.jpg',
                    header: 'Buy Coffee',
                    price: true,
                    comment:
                        'Congratulations, you have successfully made a coffee purchase',
                    date: '22 August 2022, 10:00 AM',
                    priceFigure: "- IDR 20.000"),
                SizedBox(height: 10),
                Text(
                  'Last Week',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 10),
                CustomHistory(
                    imageName: 'assets/images/moneySent.jpg',
                    header: 'Milk Shake',
                    price: true,
                    comment:
                        'Congratulations, you have successfully made a coffee purchase',
                    date: '17 August 2022, 08:00 AM',
                    priceFigure: "- IDR 10.000"),
                SizedBox(height: 10),
                CustomHistory(
                    imageName: 'assets/images/moneySent.jpg',
                    header: 'Coffee Meetings',
                    price: true,
                    comment:
                        'Congratulations, you have successfully made a coffee purchase',
                    date: '15 August 2022, 10:00 AM',
                    priceFigure: "- IDR 200.000"),
                SizedBox(height: 10),
                CustomHistory(
                    imageName: 'assets/images/moneyIn.jpg',
                    header: 'Top Up IDR 500.00',
                    price: false,
                    comment:
                        'Congratulations, you have successfully made a top up of IDR 200.00',
                    date: '',
                    priceFigure: ""),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
