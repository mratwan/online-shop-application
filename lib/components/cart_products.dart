import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {

  var products_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "assets/images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1
    },
    {
      "name": "Blazer",
      "picture": "assets/images/products/hills1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1
    },
    {
      "name": "Blazer",
      "picture": "assets/images/products/hills2.jpeg",
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: products_on_the_cart[index]['name'],
            cart_prod_picture: products_on_the_cart[index]['picture'],
            cart_prod_price: products_on_the_cart[index]['price'],
            cart_prod_color: products_on_the_cart[index]['color'],
            cart_prod_size: products_on_the_cart[index]['size'],
            cart_prod_qty: products_on_the_cart[index]['quantity'],
          );
        }
      ),
    );
  }
}

class Single_cart_product extends StatelessWidget {

  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_qty;
  final cart_prod_size;
  final cart_prod_color;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_qty,
    this.cart_prod_size,
    this.cart_prod_color
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(cart_prod_picture, width: 80.0, height: 80.0,),
        title: Text(cart_prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Size:'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(cart_prod_size, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Color:'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(cart_prod_color, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Price:'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("\$" + cart_prod_price.toString(), style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                )
              ],
            )
          ],
        ),
        trailing: Column(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_drop_up),
              onPressed: () {},
            ),
            Text(cart_prod_qty.toString()),
            IconButton(
              icon: Icon(Icons.arrow_drop_down),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

