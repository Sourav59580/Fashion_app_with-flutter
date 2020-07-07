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
    );
  }
}
