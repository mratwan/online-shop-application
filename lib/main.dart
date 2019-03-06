import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:shop/components/horizontal_listview.dart';
import 'package:shop/components/products.dart';
import 'package:shop/pages/cart.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Widget image_carousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/m1.jpeg'),
          AssetImage('assets/images/w1.jpeg'),
          AssetImage('assets/images/w3.jpeg'),
          AssetImage('assets/images/w4.jpeg')
        ],
        autoplay: true,
//        animationCurve: Curves.fastOutSlowIn,
//        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
//        indicatorBgPadding: 2.0,
//        showIndicator: false,
        noRadiusForIndicator: true,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Digikala'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), color: Colors.white, onPressed: () {}),
          IconButton(icon: Icon(Icons.shopping_cart), color: Colors.white, onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
          }),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[

            //--header
            UserAccountsDrawerHeader(
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              accountName: Text('Mohammadreza Atwan'),
              accountEmail: Text('mratwan@gmail.com'),
              decoration: BoxDecoration(
                color: Colors.red
              ),
            ),

            //-- body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),

            InkWell(
              onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => Cart())); },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite, color: Colors.red),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.green),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.info, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),

      body: ListView(
        children: <Widget>[
          //-- image carousel
          image_carousel,

          //-- Categories List view
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Categories'),
          ),
          HorizontalList(),

          //-- Recent products Grid view
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Recent Products'),
          ),
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}

