import 'package:flutter/material.dart';
import 'ImageCarousel.dart';
import 'Categories.dart';
import 'RecentProducts.dart';
import 'DrawerContent.dart';
import 'ShoppingCart.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShopApp'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ShoppingCart()
                )
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Omar'),
              accountEmail: Text('omarelsaid7777@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.grey,
                ),
              ),
            ),
            DrawerContent(
              icon: Icon(
                Icons.home,
                color: Colors.blueAccent,
              ),
              title: 'Home',
            ),
            DrawerContent(
              icon: Icon(
                Icons.person,
                color: Colors.blueAccent,
              ),
              title: 'My account',
            ),
            DrawerContent(
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.blueAccent,
              ),
              title: 'My orders',
            ),
            DrawerContent(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.blueAccent,
              ),
              title: 'Shopping cart',
            ),
            DrawerContent(
              icon: Icon(
                Icons.favorite,
                color: Colors.blueAccent,
              ),
              title: 'Favourites',
            ),
            Divider(
              height: 2.0,
              color: Colors.grey,
            ),
            DrawerContent(
              icon: Icon(
                Icons.settings,
                color: Colors.blueAccent,
              ),
              title: 'Settings',
            ),
            DrawerContent(
              icon: Icon(
                Icons.help,
                color: Colors.blueAccent,
              ),
              title: 'Abot us',
            ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          imageCarousel,
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Categories',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          HorizontalList(),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Recent products',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            height: 450.0,
            child: Products(),
          ),
        ],
      )
    );
  }
}