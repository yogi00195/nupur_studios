import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

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
  Widget imageCarousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/theme.png'),
        AssetImage('images/create.png'),
        AssetImage('images/manage.png'),
        AssetImage('images/analytics.png')

      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
    ),

  );
    return Scaffold(
     appBar: new AppBar(
       backgroundColor: Colors.indigo[900],
       title: Text('Nupur Studios'),
       actions: <Widget>[
         new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
         new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){})
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
            imageCarousel
          ],
        ),
     );
  
  }

}
      
      