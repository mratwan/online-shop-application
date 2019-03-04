import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {

  final product_detail_name;
  final product_detail_old_price;
  final product_detail_new_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_old_price,
    this.product_detail_new_price,
    this.product_detail_picture
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Digikala'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), color: Colors.white, onPressed: () {}),
          IconButton(icon: Icon(Icons.shopping_cart), color: Colors.white, onPressed: () {}),
        ],
      ),

      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.product_detail_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("\$" + widget.product_detail_old_price.toString(), style: TextStyle(decoration: TextDecoration.lineThrough, color: Colors.red)),
                      ),
                      Expanded(
                        child: Text("\$" + widget.product_detail_new_price.toString(), style: TextStyle(color: Colors.green)),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(onPressed: () {
                  showDialog(context: context, builder: (context) {
                    return AlertDialog(
                      title: Text('Size'),
                      content: Text('Choose the size'),
                      actions: <Widget>[
                        MaterialButton(onPressed: (){ Navigator.of(context).pop(context); }, child: Text('close'))
                      ],
                    );
                  });
                },
                color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.5,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Size")
                      ),
                      Expanded(
                          child: Icon(Icons.arrow_drop_down)
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.5,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text("Color")
                      ),
                      Expanded(
                          child: Icon(Icons.arrow_drop_down)
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.5,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text("Qty")
                      ),
                      Expanded(
                          child: Icon(Icons.arrow_drop_down)
                      )
                    ],
                  ),
                ),
              )
            ],
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.5,
                  child: Text("Buy now")
                ),
              ),
              IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red,), onPressed: () {}),
              IconButton(icon: Icon(Icons.favorite_border, color: Colors.red,), onPressed: () {}),
            ],
          )
        ],
      ),
    );
  }
}
