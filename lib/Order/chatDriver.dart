import 'package:coffee_shop_mobile_app/widget/custom_chatDriver.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatDriver extends StatefulWidget {
  ChatDriver({super.key});

  @override
  State<ChatDriver> createState() => _ChatDriverState();
}

class _ChatDriverState extends State<ChatDriver> {
  List messages = [
    {
      'text':
          'Is the order in accordance with what is stated in the application?',
      "dateTime": 'Today 06:50',
      "isSentByMe": false,
    },
    {
      'text': 'Yes, the order is correct.',
      'dateTime': 'Today 06:51',
      'isSentByMe': true,
    },
    {
      'text': 'Does the drop off point match the one in the app?',
      'dateTime': 'Today 06:52',
      'isSentByMe': false,
    },
    {
      'text': 'Yes, the point of delivery is correct.',
      'dateTime': 'Today 06:53',
      'isSentByMe': true,
    },
    {
      'text': 'Okay, ready to do it',
      'dateTime': 'Today 06:54',
      'isSentByMe': false,
    },
  ].reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      hintText: 'Send your message...',
                    ),
                  ),
                ),
                Icon(
                  Icons.attach_file,
                  size: 35,
                  color: Colors.grey,
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.green),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.send,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                )
              ],
            )),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile2.jpg'),
              ),
              SizedBox(width: 5),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Richard Lee',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    'Last seen 06:59',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              SizedBox(width: 100),
              Icon(
                Icons.phone,
                size: 35,
                color: Colors.grey,
              )
            ],
          )
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Container(
          child: Column(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Today',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          for (var element in messages)
            Column(
              crossAxisAlignment: element['isSentByMe']
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 10,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CustomChatDriver(
                    text: element['text'],
                    dateTime: element['dateTime'],
                    isSentByMe: element['isSentByMe'],
                  ),
                )
              ],
            ),
        ],
      )),
    );
  }
}
