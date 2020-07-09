import 'package:flutter/material.dart';

class HorijontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
     child: ListView(
       scrollDirection: Axis.horizontal,
       children: <Widget>[
         Category(
           imageLocation: 'images/cats/tshirt.png',
           imageCaption: 'Shirt',
         ),
         Category(
           imageLocation: 'images/cats/formal.png',
           imageCaption: "Formal",
         ),
         Category(
           imageLocation: 'images/cats/informal.png',
           imageCaption: "Infromal",
         ),
         Category(
           imageLocation: 'images/cats/dress.png',
           imageCaption: "Dress",
         ),
         Category(
           imageLocation: 'images/cats/jeans.png',
           imageCaption: "Jeans",
         ),
         Category(
           imageLocation: 'images/cats/shoe.png',
           imageCaption: "Shoe",
         ),
         Category(
           imageLocation: 'images/cats/accessories.png',
           imageCaption: "Accessories",
         ),

       ],
     ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Category({
    this.imageLocation,
    this.imageCaption
  });
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(2),
    child: InkWell(
      onTap: (){},
      child: Container(
        width: 120,
        child: ListTile(
          title: Image.asset(imageLocation,
          width: 90,
          height: 60,),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(imageCaption,style: TextStyle(color: Colors.black),),
          )

        ),
      ),
    ),);
    
  }
}
