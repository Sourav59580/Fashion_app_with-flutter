import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//My own import file
import 'package:flutterfashion/component/horijontalList.dart';
import 'package:flutterfashion/component/products.dart';

void main(){
  runApp(MaterialApp(
    home: HomePage()
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget imageCarousel = Container(
    height: 200,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/c1.jpg'),
        AssetImage('images/m1.jpeg'),
        AssetImage('images/w1.jpeg'),
        AssetImage('images/w3.jpeg'),
        AssetImage('images/w4.jpeg'),
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotColor: Colors.yellow,
//      overlayShadow: true,
//      overlayShadowColors: Colors.white,
//      noRadiusForIndicator: true,

    ),
  );
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
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            //header part of drawer
            UserAccountsDrawerHeader(
                accountName: Text("Sourav Santra"),
                accountEmail: Text("souravsantra59580@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                child: Icon(Icons.person,color: Colors.black,),
                backgroundColor: Colors.yellowAccent,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.pink
            ),),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Icon(Icons.home,color: Colors.red,),
                title: Text("Home"),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Icon(Icons.person,color: Colors.red,),
                title: Text("My account"),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Icon(Icons.shopping_basket,color: Colors.red,),
                title: Text("My orders"),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Icon(Icons.dashboard,color: Colors.red,),
                title: Text("Categoris"),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Icon(Icons.favorite,color: Colors.red,),
                title: Text("Favourites"),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Icon(Icons.settings,color: Colors.red,),
                title: Text("Setting"),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Icon(Icons.help,color: Colors.red,),
                title: Text("About"),
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          //image carousel being here
          imageCarousel,

          // padding category
          Padding(
            padding: EdgeInsets.all(15),
            child: Text("Category",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          ),

          //Horizontal list view
          HorijontalList(),

          //recent view category
          Padding(
            padding: EdgeInsets.all(15),
            child: Text("Recent products",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          ),
          Container(
            height: 330,
            child: Products(),
          ),

        ],
      ),
    );
  }
}
