import 'package:FoodUI/models/user.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final User user = new User('Guilherme Farias', 'guicfarias11@gmail.com');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              leading: Icon(FontAwesomeIcons.cog),
              title: Text('Settings'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(FontAwesomeIcons.solidQuestionCircle),
              title: Text('About'),
            ),
          ],
        ),
      ),
    );
  }
}
