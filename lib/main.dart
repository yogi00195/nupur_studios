import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:nupur_studios/components/horizontal_listview.dart';

import 'components/demo.dart';



// my own imports 


void main(){
 runApp(
   MaterialApp(
     debugShowCheckedModeBanner: false,
     home: HomePage(),
     
   )

 );
 }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}
class _HomePageState extends State<HomePage> {
   @override
   Widget build(BuildContext context) {
     Widget imageSliderCarousel = new Container(
       height: 200,
       child: Carousel(
         boxFit: BoxFit.fill,
         images: [
           AssetImage('assets/images/avatar.jpeg'),
           AssetImage('assets/images/theme.jpeg'),
           AssetImage('assets/images/create.jpeg'),
           AssetImage('assets/images/manage.jpeg'),
           AssetImage('assets/images/analytics.jpeg'),
                     
           
           

         ],
       ),
     );
    return Scaffold(
      backgroundColor: Colors.indigo[900],
     appBar: new AppBar(
       backgroundColor: Colors.indigo[900],
       title: Text('My First App'),
       centerTitle: true,
       actions: <Widget>[
         new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
         new IconButton(icon: Icon(Icons.message, color: Colors.white,), onPressed: (){}),
         new IconButton(icon: Icon(Icons.notifications, color: Colors.white,), onPressed: (){})
       ],
      
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
               
            new UserAccountsDrawerHeader(
              accountName: Text('Yogesh'), 
              accountEmail: Text('test@test.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white,),
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.indigo[900],
            ),
              ),  
            
                // body
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home, color: Colors.indigo[900]),
            ),
          ),
           InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('My Account'),
              leading: Icon(Icons.person, color: Colors.red),
            ),
          ), InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('My Orders'),
              leading: Icon(Icons.shopping_basket, color: Colors.red),
            ),
          ), InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Categories'),
              leading: Icon(Icons.dashboard, color: Colors.red),
            ),
          ), InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Favourites'),
              leading: Icon(Icons.favorite, color: Colors.red),
            ),
          ),
          Divider(),
           InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings, color: Colors.blue),
            ),
          ),
           InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('About'),
              leading: Icon(Icons.help, color: Colors.green),
            ),
          ),
            ],
          ),
        ),
        body: new ListView(
          children: <Widget>[
            // image carousel begins here
            imageSliderCarousel,
        

         // Row(
           // children: <Widget> [
             //Container(
            
            //height: 50,
           
      
             //child: Text(
               //'Select your task',
                 //   style: TextStyle(fontSize: 30, color: Colors.white),
       
                  //), alignment: Alignment(-0.8, 0.0),
                   
                    //new IconButton(icon: Icon(Icons.calendar_today,
                      //   color: Colors.white,), 
                        //onPressed: (){}),
                 
                  //), ], ),
                       
              HorizontalList(),        
                       
                            

           Container(
             
             height: 400.0,
             

             child: MyApp(),
           )

            

            
          ],
         
        ),

     );
  
  }

}
      
      