import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoriesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Categories',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            height: 110,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Category('assets/categories/asianfood.svg', 'Asian'),
                Category('assets/categories/breakfast.svg', 'Breakfast'),
                Category('assets/categories/pizza.svg', 'Pizza'),
                Category('assets/categories/soup.svg', 'Soup'),
                Category('assets/categories/summer.svg', 'Summer'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imgPath;
  final String imgCaption;

  const Category(this.imgPath, this.imgCaption);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 90,
          child: Column(
            children: [
              SizedBox(
                height: 80,
                child: SvgPicture.asset(
                  imgPath,
                  //colorBlendMode: BlendMode.darken,
                  placeholderBuilder: (BuildContext context) => Container(
                      padding: const EdgeInsets.all(30.0),
                      child: const CircularProgressIndicator()),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                imgCaption,
                style: TextStyle(color: Colors.black45, fontSize: 14.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
