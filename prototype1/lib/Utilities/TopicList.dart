// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TopicTile extends StatelessWidget {
  
  final String topicName;
  final bool topicSelected;
  Function(bool?)? onChanged;
  
  TopicTile({
    super.key, 
    required this.topicName,
    required this.topicSelected,
    required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.all(25),
    child: Container(
      padding: EdgeInsets.all(24),
      child: Row(
        children: [

          //Checkbox
          Checkbox(value: topicSelected, onChanged: onChanged),

          //Topic Name
          Text((topicName),
          style: TextStyle(color: Colors.white, fontSize: 25),),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.black, 
        borderRadius: BorderRadius.circular(12)),
    ),
    );
  }
}