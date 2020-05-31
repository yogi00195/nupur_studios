import 'package:flutter/material.dart';

class Products extends StatefulWidget {
@override
_ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    { 
      "name": "Create",
      "picture": "assets/images/create.jpeg",


    },
    { 
      "name": "Library",
      "picture": "assets/images/theme.jpeg",


    },
    { 
      "name": "Graph",
      "picture": "assets/images/analytics.jpeg",


    },
    { 
      "name": "To do",
      "picture": "assets/images/manage.jpeg",


    }
  ];
 
    @override
    Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Single_products(
         products_name: product_list[index]['name'],
         products_picture: product_list[index]['picture'],
        );
      });

  }

}
class Single_products extends StatelessWidget {
 final products_name;
 final products_picture;

Single_products({
  this.products_name,
  this.products_picture,
});
  @override
  Widget build(BuildContext context) {
    return Card( 
      child: Hero(
        tag: products_name,
        child: Material(
          child: InkWell(onTap: (){},
          child: GridTile(
            footer: Container(
              color: Colors.green[100],
              child: ListTile(
                leading: Text(products_name, style: TextStyle(fontSize: 30.0,
        color: Colors.black,
        fontWeight: FontWeight.bold,),),
              ),
            ),
            child: Container(
              height: 200.0,
              width: 200.0,
              child: ClipOval(
                
            child: Image.asset(products_picture,
              
            fit: BoxFit.cover,
            )), )
           
          ),
          ),
          )),
      );
  }
}