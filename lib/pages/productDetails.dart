import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_image;
  final product_details_old_price;
  final product_details_new_price;

  ProductDetails({
    this.product_details_name,
    this.product_details_image,
    this.product_details_new_price,
    this.product_details_old_price
});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Fashion.app"),
          actions: <Widget>[
            IconButton(
               icon: Icon(Icons.search,color: Colors.white,),
               onPressed: (){},
            ),
            IconButton(
                icon: Icon(Icons.shopping_cart,color: Colors.white,),
                onPressed: (){},
            ),
        ],
        backgroundColor: Colors.pink,
        ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_details_image),
              ),
              footer: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Text(widget.product_details_name),
                    title: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("\$${widget.product_details_old_price}",style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.lineThrough,
                          ),),
                        ),
                        Expanded(
                          child: Text("\$${widget.product_details_new_price}",style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // ========== The first Button =========
          Row(
            children: <Widget>[
              //  ========== The size button ==========
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Size"),),
                      Expanded(child: Icon(Icons.arrow_drop_down),),
                    ],
                  ),
                ),
              ),
              //  ========= The Color Button =========
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Color"),),
                      Expanded(child: Icon(Icons.arrow_drop_down),),
                    ],
                  ),
                ),
              ),
              //  ===== The quantity Button =========
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Qty"),),
                      Expanded(child: Icon(Icons.arrow_drop_down),),
                    ],
                  ),
                ),
              ),
            ],
          ),
          //  =========== The buy button ===========
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Buy Now"),
                ),
              ),
              IconButton(
                icon: Icon(Icons.add_shopping_cart,color: Colors.red,),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(Icons.favorite_border,color: Colors.red,),
                onPressed: (){},
              ),
            ],
          )
        ],
      ),
    );
  }
}
