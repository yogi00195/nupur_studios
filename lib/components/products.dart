import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class GridDashboard extends StatefulWidget {
  @override
  _GridDashboardState createState() =>_GridDashboard();


}

class _GridDashboardState extends State<GridDashboard> {

  Item item1 = new Item(
      title: "Create",
      subtitle: "Calender To Do",
      event: "3 Events",
      img: "assets/images/create.jpeg"
  
  
    );

   Item item2 = new Item(
      title: "Approval",
      subtitle: "Pending Approvals",
      event: "3 Events",
      img: "assets/images/manage.jpeg"
  
  
    );  
   Item item3 = new Item(
      title: "Library",
      subtitle: "See all",
      event: "theme",
      img: "assets/images/create.jpeg"
  
  
    );
   Item item4 = new Item(
      title: "Analytics",
      subtitle: "See Graph",
      event: "3 Events",
      img: "assets/images/analytics.jpeg"
  
  
    );  
    @override
    Widget build(BuildContext context) {
      List<Item> myList = [item1, item2, item3, item4]; 
      var color = 0xff453658;
      return Flexible(
        child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                color: Color(color), borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(data.img,width:42,),
                     SizedBox(
                      height: 14,
                    ),
                    Text(
                      data.title,
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),

                    ),
                    SizedBox(height: 8,),
                     Text(
                      data.subtitle,
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          color: Colors.white38,
                          fontSize: 10,
                          fontWeight: FontWeight.w600)),
                     ),
                     SizedBox(height: 14,),
                      Text(
                      data.event,
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          color: Colors.white70,
                          fontSize: 11,
                          fontWeight: FontWeight.w600)),
                      ),



                  ],

                )

            );
    }).toList()),

      );
     }
  }
  
 
 class Item {
  String title;
  String subtitle;
  String event;
  String img;
  Item({this.title,this.subtitle,this.event,this.img});

}