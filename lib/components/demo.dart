import 'package:flutter/material.dart';
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    return Card(
       color: Colors.white70,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
           
          leading: Icon(Icons.album, size: 60),
          title: Text('Heart Shak'),
          subtitle: Text('TWICE'),
          
           
        ),
      ],
    ),
  );
  }
}