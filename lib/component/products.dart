import 'package:flutter/material.dart';
import 'package:flutterfashion/pages/productDetails.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name" : "Blazer1",
      "picture": "images/products/blazer1.jpeg",
      "oldPrice": 1800,
      "price": 1500
    },
    {
      "name" : "Dress1",
      "picture": "images/products/dress1.jpeg",
      "oldPrice": 2300,
      "price": 1400
    },
    {
      "name" : "Blazer2",
      "picture": "images/products/blazer2.jpeg",
      "oldPrice": 1800,
      "price": 1500
    },
    {
      "name" : "Dress2",
      "picture": "images/products/dress2.jpeg",
      "oldPrice": 2300,
      "price": 1400
    },
    {
      "name" : "Hills1",
      "picture": "images/products/hills1.jpeg",
      "oldPrice": 2300,
      "price": 1400
    },
    {
      "name" : "h",
      "picture": "images/products/hills2.jpeg",
      "oldPrice": 2300,
      "price": 1400
    },
    {
      "name" : "p",
      "picture": "images/products/pants1.jpg",
      "oldPrice": 2300,
      "price": 1400
    },
    {
      "name" : "p2",
      "picture": "images/products/pants2.jpeg",
      "oldPrice": 2300,
      "price": 1400
    },
    {
      "name" : "s1",
      "picture": "images/products/shoe1.jpg",
      "oldPrice": 2300,
      "price": 1400
    },
    {
      "name" : "sk1",
      "picture": "images/products/skt1.jpeg",
      "oldPrice": 2300,
      "price": 1400
    },
    {
      "name" : "sk2",
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
            onTap: ()=>Navigator.of(context).push(MaterialPageRoute(
              builder: (context)=> ProductDetails(
                product_details_name: productName,
                product_details_image: productImage,
                product_details_new_price: productPrice,
                product_details_old_price: productOldPrice,
              ) )),
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

