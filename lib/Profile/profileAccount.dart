import 'package:coffee_shop_mobile_app/Profile/profile.dart';
import 'package:coffee_shop_mobile_app/widget/custom_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileAccount extends StatelessWidget {
  const ProfileAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        title: Text(
          'Account',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        // leading: IconButton(
        //   onPressed: () => Navigator.of(context)
        //       .push(MaterialPageRoute(builder: (context) => Profile())),
        //   icon: Icon(
        //     Icons.arrow_back,
        //     color: Colors.black,
        //     size: 30,
        //   ),
        // ),
        actions: [
          Icon(
            Icons.more_horiz,
            color: Colors.black,
            size: 30,
          )
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CustomProfile(
                  icon: Icons.private_connectivity_outlined,
                  header: 'Privacy',
                  comment: 'Set and protect your privacy'),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(color: Colors.grey),
                width: double.infinity,
                height: 1,
              ),
              SizedBox(height: 10),
              CustomProfile(
                  icon: Icons.security_sharp,
                  header: 'Security',
                  comment: 'Manage your account security'),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(color: Colors.grey),
                width: double.infinity,
                height: 1,
              ),
              SizedBox(height: 10),
              CustomProfile(
                  icon: Icons.lock,
                  header: '2-step verification',
                  comment: '2-step verification of your security'),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(color: Colors.grey),
                width: double.infinity,
                height: 1,
              ),
              //here
              SizedBox(height: 10),
              CustomProfile(
                  icon: Icons.note_add,
                  header: 'Request account info',
                  comment: 'Request your account info'),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(color: Colors.grey),
                width: double.infinity,
                height: 1,
              ),
              SizedBox(height: 10),
              CustomProfile(
                  icon: Icons.delete,
                  header: 'Delete',
                  comment: 'Delete your account'),
            ],
          ),
        ),
      ),
    );
  }
}
