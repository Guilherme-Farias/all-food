import 'dart:math';

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
    Food(8, 'P!nk drink', 'assets/foods/food8.jpg', 15.00, 13.0,
        FoodCategoryType.BAR),
    Food(9, 'Caipirinha', 'assets/foods/food9.jpg', 13.00, 12.0,
        FoodCategoryType.BAR),
    Food(10, 'Eggs and Bacon', 'assets/foods/food10.jpg', 20.00, 16.0,
        FoodCategoryType.BREAKFAST),
    Food(11, 'Breads and veggies', 'assets/foods/food11.jpg', 16.00, 12.0,
        FoodCategoryType.BREAKFAST),
    Food(12, 'Waffle', 'assets/foods/food12.jpg', 16.00, 12.0,
        FoodCategoryType.BREAKFAST),
    Food(13, 'Yakisoba', 'assets/foods/food13.jpg', 21.00, 18.0,
        FoodCategoryType.CHINESE),
    Food(14, 'Spring roll', 'assets/foods/food14.jpg', 10.00, 8.0,
        FoodCategoryType.CHINESE),
    Food(15, 'Noodles', 'assets/foods/food15.jpg', 20.00, 18.0,
        FoodCategoryType.CHINESE),
    Food(16, 'Coffee with milk', 'assets/foods/food16.jpg', 10.00, 8.0,
        FoodCategoryType.COFFE),
    Food(17, 'Combo 2 Burguer', 'assets/foods/food17.jpg', 25.00, 24.0,
        FoodCategoryType.FASTFOOD),
    Food(18, 'Burger + french fries', 'assets/foods/food18.jpg', 15.00, 13.0,
        FoodCategoryType.FASTFOOD),
    Food(19, 'Special Pizza', 'assets/foods/food19.jpg', 20.00, 18.0,
        FoodCategoryType.PIZZA),
    Food(20, 'Mussarela', 'assets/foods/food20.jpg', 20.00, 18.0,
        FoodCategoryType.PIZZA),
    Food(21, 'Marguerita', 'assets/foods/food21.jpg', 20.00, 18.0,
        FoodCategoryType.PIZZA),
    Food(21, 'Ice cream', 'assets/foods/food22.jpg', 8.00, 5.0,
        FoodCategoryType.SUMMER),
  ];

  static List<Food> getAllFoods() {
    return shuffle(productList);
  }

  static List<Food> getSimilarFood(Food item) {
    return productList.fold(<Food>[], (list, food) {
      if (food.foodCategoryType == item.foodCategoryType &&
          food.id != item.id) {
        list.add(food);
      }
      return shuffle(list);
    });
  }
}

List shuffle(List items) {
  var random = new Random();

  // Go through all elements.
  for (var i = items.length - 1; i > 0; i--) {
    // Pick a pseudorandom number according to the list length
    var n = random.nextInt(i + 1);

    var temp = items[i];
    items[i] = items[n];
    items[n] = temp;
  }

  return items;
}
