import 'package:flutter/material.dart';

class RecentProductsGridView extends StatefulWidget {
  @override
  RecentProductsGridViewState createState() => RecentProductsGridViewState();
}

class RecentProductsGridViewState extends State<RecentProductsGridView> {
  var productList = [
    {
      'name': 'Jimmy\'s Steak',
      'imgPath': 'assets/foods/food5.jpg',
      'oldPrice': 34.00,
      'price': 30.0,
    },
    {
      'name': 'Butter Steak',
      'imgPath': 'assets/foods/food6.jpg',
      'oldPrice': 45.00,
      'price': 42.0,
    },
    {
      'name': 'Sushi',
      'imgPath': 'assets/foods/food7.jpg',
      'oldPrice': 10.00,
      'price': 7.0,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Recent products',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            height: 320,
            child: GridView.builder(
              itemCount: productList.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return ProductCard(
                  productList[index]['name'],
                  productList[index]['imgPath'],
                  productList[index]['oldPrice'],
                  productList[index]['price'],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final name;
  final imgPath;
  final oldPrice;
  final price;

  const ProductCard(this.name, this.imgPath, this.oldPrice, this.price);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: name,
          child: Material(
            child: InkWell(
              onTap: () {},
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    title: Text(
                      '\$$price',
                      style: TextStyle(
                          fontWeight: FontWeight.w800, color: Colors.red),
                    ),
                    subtitle: Text(
                      '\$$oldPrice',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.black54,
                          decoration: TextDecoration.lineThrough),
                    ),
                    leading: Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}
