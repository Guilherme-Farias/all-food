import 'package:FoodUI/models/food/food.dart';
import 'package:FoodUI/models/categories/food_category_type.dart';

class FoodList {
  static final List<Food> productList = [
    Food(1, 'Soup', 'assets/foods/food1.jpg', 34.00, 30.0,
        FoodCategoryType.SOUP),
    Food(2, 'Pasta with Ham', 'assets/foods/food2.jpg', 20.00, 18.0,
        FoodCategoryType.LUNCH),
    Food(3, 'Italian Pasta', 'assets/foods/food3.jpg', 25.00, 20.0,
        FoodCategoryType.LUNCH),
    Food(4, 'Black Beef', 'assets/foods/food4.jpg', 13.00, 10.0,
        FoodCategoryType.LUNCH),
    Food(5, 'Jimmy\'s Steak', 'assets/foods/food5.jpg', 34.00, 30.0,
        FoodCategoryType.LUNCH),
    Food(6, 'Butter Steak', 'assets/foods/food6.jpg', 45.00, 42.0,
        FoodCategoryType.LUNCH),
    Food(7, 'Sushi', 'assets/foods/food7.jpg', 10.00, 7.0,
        FoodCategoryType.JAPONESE),
  ];

  static List<Food> getSimilarFood(Food item) {
    return productList.fold(<Food>[], (list, food) {
      if (food.foodCategoryType == item.foodCategoryType &&
          food.id != item.id) {
        list.add(food);
      }
      return list;
    });
  }
}
