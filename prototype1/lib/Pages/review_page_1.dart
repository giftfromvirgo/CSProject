// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:prototype1/Utilities/TopicList.dart';

// ignore: must_be_immutable
class ReviewPage1 extends StatefulWidget {
//list
  ReviewPage1({super.key});

  @override
  State<ReviewPage1> createState() => _ReviewPage1State();
}

class _ReviewPage1State extends State<ReviewPage1> {
List TopicList = [
  ["Biological Molecules", false],
  ["Cells", false],
  ["Exchange", false],
  ["Genetics", false],
];

//Checkbox selected
void checkboxChanged(bool? value, int index){
  setState((){
    TopicList[index][1] = !TopicList[index][1];
  });
}

  @override
  //Basic app bar at top of screen
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text(
          "Select Review Topics", 
          style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.white,)),
      
        body: ListView.builder(
          itemCount: TopicList.length,
          itemBuilder: (context, index){
            return Column(
              children: [
                TopicTile(
                  topicName: TopicList[index][0],
                  topicSelected: TopicList[index][1],
                  onChanged: (value) => checkboxChanged(value, index)
                  
                ),
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
              ],
            );
            
    
},

        ),
        
        );
  }
}