// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({super.key});

  @override
  //Basic app bar at top of screen
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text(
          "Analytics", 
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
            
            Container(decoration: BoxDecoration(
        color: Colors.black, 
        borderRadius: BorderRadius.circular(12)),
              child: Text("Daily Streak Placeholder",
          style: TextStyle(color: Colors.white, fontSize: 25),),),
                      Container(decoration: BoxDecoration(
        color: Colors.black, 
        borderRadius: BorderRadius.circular(12)),
              child: Text("Weekly Analytics Placeholder",
          style: TextStyle(color: Colors.white, fontSize: 25),),),
                      Container(decoration: BoxDecoration(
        color: Colors.black, 
        borderRadius: BorderRadius.circular(12)),
              child: Text("Monthly Analytics Placeholder",
          style: TextStyle(color: Colors.white, fontSize: 25),),),
            

          ],
        )

        )
    );
  }
}