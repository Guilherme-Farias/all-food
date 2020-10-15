import 'package:FoodUI/components/food_grid_view.dart';
import 'package:FoodUI/models/food/food.dart';
import 'package:FoodUI/models/food/food_list.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

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
                height: 60,
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: AutoSizeText(widget.food.name,
                          maxLines: 1,
                          minFontSize: 12,
                          maxFontSize: 24,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            '\$${widget.food.oldPrice}',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Colors.black54,
                                decoration: TextDecoration.lineThrough),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 16.0,
                            ),
                            child: Text(
                              '\$${widget.food.price}',
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Colors.green,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.green,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text('Buy now'),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                color: Colors.green,
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
