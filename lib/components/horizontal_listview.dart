import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
  height: 30.0,
  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0 ),
  
  child: Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
  
  children: <Widget>[
    
    Text( 
      'Choose to Start',
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      
    ),
    IconButton(
      icon: Icon(Icons.calendar_today, color: Colors.green[300], size: 30.0), onPressed: (){}
     ),
    
      
  ],
    ),
    );

  }
}