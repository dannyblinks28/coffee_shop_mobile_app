import 'package:coffee_shop_mobile_app/Card_Menu/home_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Caffee/caffee.dart';
import '../Reward/reward.dart';
import '../Profile/profile.dart';

class HomeCaffeeRewardProfile extends StatefulWidget {
  @override
  State<HomeCaffeeRewardProfile> createState() =>
      _HomeCaffeeRewardProfileState();
}

class _HomeCaffeeRewardProfileState extends State<HomeCaffeeRewardProfile> {
  List pages = [HomePage(), Caffee(), Reward(), Profile()];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.home_rounded,
                  size: 30,
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.coffee,
                  size: 30,
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.bookmark_border_sharp,
                  size: 30,
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.person,
                  size: 30,
                )),
          ]),
    );
  }
}
