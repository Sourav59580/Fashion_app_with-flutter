import 'package:flutter/material.dart';

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
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            
          ],
        ),
      ),
    );
  }
}
