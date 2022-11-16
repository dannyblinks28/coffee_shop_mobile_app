import 'package:coffee_shop_mobile_app/Caffee/explore.dart';
import 'package:coffee_shop_mobile_app/widget/custom_coffeeSearch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Card_Menu/home_Page.dart';

class CoffeeSearch extends StatelessWidget {
  const CoffeeSearch({super.key});

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
              .push(MaterialPageRoute(builder: (context) => Explore())),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.search, size: 30, color: Colors.grey.shade300),
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
              SizedBox(height: 20),
              CustomCoffeeSearch(name: 'Coffee Bean'),
              SizedBox(height: 20),
              CustomCoffeeSearch(name: 'Coffee Shop'),
              SizedBox(height: 20),
              CustomCoffeeSearch(name: 'Coffee Express'),
            ],
          ),
        ),
      ),
    );
  }
}
