import 'package:FoodUI/models/categories/food_category_type.dart';
import 'package:FoodUI/models/categories/food_category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesListView extends StatelessWidget {
  final List<FoodCategoryModel> categories = getAllCategories();
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
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final FoodCategoryModel category = categories[index];
                return FoodCategoryCard(category, onClick: () {});
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}

class FoodCategoryCard extends StatelessWidget {
  final FoodCategoryModel category;
  final Function onClick;

  const FoodCategoryCard(this.category, {@required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () => onClick(),
        child: Container(
          width: 90,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 80,
                child: SvgPicture.asset(
                  category.imgPath,
                  colorBlendMode: BlendMode.darken,
                  placeholderBuilder: (BuildContext context) => Container(
                    padding: const EdgeInsets.all(30.0),
                    child: const CircularProgressIndicator(),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                category.name,
                style: TextStyle(color: Colors.black45, fontSize: 14.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
