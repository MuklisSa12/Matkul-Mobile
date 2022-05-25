import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class MyHeaderDrawer extends StatefulWidget {
  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pinkAccent[700],
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage('images/aku.jpeg'),
              ),
            ),
          ),
          Text(
            'Muklissatul Yusuf', style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "muklis@gmail.com", style: TextStyle(color: Colors.grey[200], fontSize: 14,)
            ,),
        ],
      ),
    );
  }
}
