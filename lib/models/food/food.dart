import 'package:FoodUI/models/categories/food_category_type.dart';

class Food {
  final int id;
  final String name;
  final String imgPath;
  final double oldPrice;
  final double price;
  final FoodCategoryType foodCategoryType;

  Food(
    this.id,
    this.name,
    this.imgPath,
    this.oldPrice,
    this.price,
    this.foodCategoryType,
  );
}
