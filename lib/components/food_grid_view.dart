import 'package:FoodUI/components/centered_message.dart';
import 'package:FoodUI/models/food/food.dart';
import 'package:FoodUI/screens/product_details.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class FoodGridView extends StatefulWidget {
  final String title;
  final List<Food> foodList;

  FoodGridView(
    this.title,
    this.foodList,
  );

  @override
  FoodGridViewState createState() => FoodGridViewState();
}

class FoodGridViewState extends State<FoodGridView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              widget.title,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            height: 330,
            child: widget.foodList.isNotEmpty
                ? GridView.builder(
                    itemCount: widget.foodList.length,
                    itemBuilder: (context, index) {
                      return FoodCard(widget.foodList[index]);
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                  )
                : CenteredMessage(
                    'No similar foods found',
                    icon: Icons.question_answer,
                  ),
          )
        ],
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final Food food;

  FoodCard(this.food);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Material(
        child: InkWell(
          onTap: () => goToProductDetail(context),
          child: GridTile(
            child: Image.asset(
              food.imgPath,
              fit: BoxFit.cover,
            ),
            footer: Container(
              height: 50,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: AutoSizeText(food.name,
                        maxLines: 1,
                        minFontSize: 12,
                        maxFontSize: 20,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(
                            '\$${food.oldPrice}',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Colors.black54,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(
                            '\$${food.price}',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Colors.red,
                              fontSize: 18,
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
      ),
    );
  }

  Future goToProductDetail(BuildContext context) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetail(food),
      ),
    );
  }
}
