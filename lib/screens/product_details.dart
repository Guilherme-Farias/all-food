import 'package:FoodUI/components/food_grid_view.dart';
import 'package:FoodUI/models/food/food.dart';
import 'package:FoodUI/models/food/food_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDetail extends StatefulWidget {
  final Food food;

  ProductDetail(this.food);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
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
      body: ListView(
        children: [
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.black,
                child: Image.asset(
                  widget.food.imgPath,
                  fit: BoxFit.cover,
                ),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.food.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '\$${widget.food.oldPrice}',
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.black54,
                            decoration: TextDecoration.lineThrough),
                      ),
                      Text(
                        '\$${widget.food.price}',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: RaisedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Size'),
                            content: Text('Choose the size'),
                            actions: [
                              RaisedButton(
                                color: Colors.red,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('close'),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Size'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: RaisedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Color'),
                            content: Text('Choose the color'),
                            actions: [
                              RaisedButton(
                                color: Colors.red,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('close'),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Color'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: RaisedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Quantity'),
                            content: Text('Choose the Quantity'),
                            actions: [
                              RaisedButton(
                                color: Colors.red,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('close'),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Qty'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text('Buy now'),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                color: Colors.red,
                onPressed: () {},
              ),
            ],
          ),
          Divider(),
          ListTile(
            title: Text('Food details'),
            subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id luctus ex. Vivamus nec lectus vitae tortor vehicula lacinia et a erat. Vivamus vitae sagittis odio, sit amet aliquet tortor. Duis placerat euismod dignissim. Suspendisse eu dapibus quam. Mauris consectetur ipsum velit, fermentum mattis augue pretium non. Donec pulvinar pellentesque velit vel lacinia. Quisque finibus risus ullamcorper euismod auctor. Cras lobortis finibus consectetur. Donec sodales rutrum mollis. Vestibulum gravida dolor id aliquam bibendum. Donec dictum metus sem, ut rhoncus dolor consequat eu. Suspendisse potenti. Nulla quam est, hendrerit ac imperdiet ac, convallis nec nunc.'),
          ),
          Divider(),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                      child: Text(
                        'Food name:',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(widget.food.name),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                      child: Text(
                        'Serves:',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Text('2 people'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          FoodGridView('Similar foods', FoodList.getSimilarFood(widget.food))
        ],
      ),
    );
  }
}
