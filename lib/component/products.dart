import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name" : "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "oldPrice": 1800,
      "price": 1500
    },
    {
      "name" : "Dress",
      "picture": "images/products/dress1.jpeg",
      "oldPrice": 2300,
      "price": 1400
    },
    {
      "name" : "Blazer",
      "picture": "images/products/blazer2.jpeg",
      "oldPrice": 1800,
      "price": 1500
    },
    {
      "name" : "Dress",
      "picture": "images/products/dress2.jpeg",
      "oldPrice": 2300,
      "price": 1400
    },
    {
      "name" : "Dress",
      "picture": "images/products/hills1.jpeg",
      "oldPrice": 2300,
      "price": 1400
    },
    {
      "name" : "Dress",
      "picture": "images/products/hills2.jpeg",
      "oldPrice": 2300,
      "price": 1400
    },
    {
      "name" : "Dress",
      "picture": "images/products/pants1.jpg",
      "oldPrice": 2300,
      "price": 1400
    },
    {
      "name" : "Dress",
      "picture": "images/products/pants2.jpeg",
      "oldPrice": 2300,
      "price": 1400
    },
    {
      "name" : "Dress",
      "picture": "images/products/shoe1.jpg",
      "oldPrice": 2300,
      "price": 1400
    },
    {
      "name" : "Dress",
      "picture": "images/products/skt1.jpeg",
      "oldPrice": 2300,
      "price": 1400
    },
    {
      "name" : "Dress",
      "picture": "images/products/skt2.jpeg",
      "oldPrice": 2300,
      "price": 1400
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return SingleProduct(
            productName: productList[index]['name'],
            productImage: productList[index]['picture'],
            productOldPrice: productList[index]['oldPrice'],
            productPrice: productList[index]['price'],
          );
        }
    );
  }
}

class SingleProduct extends StatelessWidget {
  final productName;
  final productImage;
  final productOldPrice;
  final productPrice;

  SingleProduct({
    this.productName,
    this.productImage,
    this.productOldPrice,
    this.productPrice
});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: productName,
        child: Material(
          child: InkWell(
            onTap: (){},
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(productName,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight:FontWeight.bold,),
                  ),
                  title: Text("\$$productPrice",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("\$$productOldPrice",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.lineThrough),
                  ),
                ),
              ),
              child: Image.asset(productImage,
              fit: BoxFit.cover,),
            ),
          ),
        ),
      ),
    );
  }
}

