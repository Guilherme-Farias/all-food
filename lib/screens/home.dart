import 'package:FoodUI/components/categories_list_view.dart';
import 'package:FoodUI/components/food_grid_view.dart';
import 'package:FoodUI/models/food/food_list.dart';
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
  //final List<Food> foodList = FoodList().productList;

  @override
  Widget build(BuildContext context) {
    final Widget imageCarousel = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          Image.asset(
            'assets/foods/food3.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/foods/food21.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/foods/food1.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/foods/food15.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/foods/food5.jpg',
            fit: BoxFit.cover,
          ),
        ],
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.black,
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        autoplayDuration: Duration(seconds: 7),
        animationDuration: Duration(seconds: 1),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'All-food',
          style: TextStyle(color: Colors.green),
        ),
        actions: [
          new IconButton(
              icon: Icon(
                Icons.search,
                size: 20,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
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
          FoodGridView('Popular foods', FoodList.getAllFoods()),
        ],
      ),
    );
  }
}
