import 'package:coffee_shop_mobile_app/Profile/profileAccount.dart';
import 'package:coffee_shop_mobile_app/widget/custom_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 35),
                Text(
                  'Coffee Beans',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            child: Positioned(
                                child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/profile1.jpg'),
                              radius: 50,
                            )),
                          ),
                          Positioned(
                              left: 30,
                              top: 80,
                              child: Container(
                                child: Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                ),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 5),
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(50)),
                              ))
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: [
                          SizedBox(height: 20),
                          Text(
                            'Brian Robinson',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text('CEO at Amazone',
                              style:
                                  TextStyle(fontSize: 22, color: Colors.grey)),
                        ],
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProfileAccount()));
                  },
                  child: CustomProfile(
                      icon: Icons.person,
                      header: 'Account',
                      comment: 'Manage and protect your account'),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(color: Colors.grey),
                  width: double.infinity,
                  height: 1,
                ),
                CustomProfile(
                    icon: Icons.notifications_none_sharp,
                    header: 'Notification',
                    comment: 'Set your notifications'),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(color: Colors.grey),
                  width: double.infinity,
                  height: 1,
                ),
                CustomProfile(
                    icon: Icons.payment_outlined,
                    header: 'Payment',
                    comment: 'Manage and protect your payment'),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(color: Colors.grey),
                  width: double.infinity,
                  height: 1,
                ),
                CustomProfile(
                    icon: Icons.bookmarks_outlined,
                    header: 'Bookmark',
                    comment: 'Set Bookmark'),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(color: Colors.grey),
                  width: double.infinity,
                  height: 1,
                ),
                CustomProfile(
                    icon: Icons.privacy_tip_outlined,
                    header: 'Privacy',
                    comment: 'Privacy and policy'),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(color: Colors.grey),
                  width: double.infinity,
                  height: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
