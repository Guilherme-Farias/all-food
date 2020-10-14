import 'package:FoodUI/components/categories_list_view.dart';
import 'package:FoodUI/components/recent_products_grid_view.dart';
import 'package:FoodUI/models/user.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final User user = new User('Guilherme Farias', 'guicfarias11@gmail.com');

  @override
  Widget build(BuildContext context) {
    final Widget imageCarousel = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/w3.jpeg'),
          AssetImage('assets/m1.jpeg'),
          AssetImage('assets/c1.jpg'),
          AssetImage('assets/w4.jpeg'),
          AssetImage('assets/m2.jpg'),
        ],
        autoplay: false,
        dotSize: 4.0,
        dotBgColor: Colors.red,
        indicatorBgPadding: 2.0,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Food Emoji Store'),
        actions: [
          new IconButton(
              icon: Icon(
                FontAwesomeIcons.search,
                size: 20,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                FontAwesomeIcons.shoppingCart,
                size: 20,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(user.name),
              accountEmail: Text(user.email),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    FontAwesomeIcons.userAlt,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(FontAwesomeIcons.home),
              title: Text('Home page'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(FontAwesomeIcons.userAlt),
              title: Text('My account'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.shopping_basket_rounded),
              title: Text('My orders'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.dashboard),
              title: Text('Categories'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(FontAwesomeIcons.solidHeart),
              title: Text('Favorites'),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: Icon(
                FontAwesomeIcons.cog,
                color: Colors.blue,
              ),
              title: Text('Settings'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                FontAwesomeIcons.solidQuestionCircle,
                color: Colors.green,
              ),
              title: Text('About'),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          imageCarousel,
          CategoriesListView(),
          RecentProductsGridView(),
        ],
      ),
    );
  }
}
