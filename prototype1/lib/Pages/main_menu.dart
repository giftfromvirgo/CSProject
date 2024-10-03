// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:prototype1/Pages/analytics_page.dart';
import 'package:prototype1/Pages/review_page_1.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  //Basic app bar at top of screen
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text(
          "Main Menu", 
          style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.white,)),
        
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            SizedBox(
            width: 300,
            height: 100,
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => ReviewPage1(),),);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor : Colors.black
            ),
            child: const Text(
            "Review",
            style: TextStyle(color: Colors.white, fontSize: 25),)),
            ),

            SizedBox(
            width: 300,
            height: 100,            
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => AnalyticsPage(),),);
            },
            style: ElevatedButton.styleFrom(
            backgroundColor : Colors.black
            ),
            child: const Text(
            "Analytics",
            style: TextStyle(color: Colors.white, fontSize: 25),)),
            )

          ],
        )

        )
    );
  }
}