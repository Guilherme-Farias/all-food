import 'package:FoodUI/models/categories/food_category_model.dart';

enum FoodCategoryType {
  BAR,
  BREAKFAST,
  CHINESE,
  COFFE,
  FASTFOOD,
  JAPONESE,
  LUNCH,
  PIZZA,
  SOUP,
  SUMMER,
}

final Map<FoodCategoryType, FoodCategoryModel> foodCategoryTypeName = {
  FoodCategoryType.BAR: FoodCategoryModel(
    'Bar',
    'assets/categories/bar.svg',
  ),
  FoodCategoryType.BREAKFAST: FoodCategoryModel(
    'Breakfast',
    'assets/categories/breakfast.svg',
  ),
  FoodCategoryType.CHINESE: FoodCategoryModel(
    'Chinese',
    'assets/categories/chinesefood.svg',
  ),
  FoodCategoryType.COFFE: FoodCategoryModel(
    'Coffee',
    'assets/categories/coffee.svg',
  ),
  FoodCategoryType.FASTFOOD: FoodCategoryModel(
    'Fast food',
    'assets/categories/fastfood.svg',
  ),
  FoodCategoryType.JAPONESE: FoodCategoryModel(
    'Japonese',
    'assets/categories/japonesefood.svg',
  ),
  FoodCategoryType.LUNCH: FoodCategoryModel(
    'Lunch',
    'assets/categories/lunch.svg',
  ),
  FoodCategoryType.PIZZA: FoodCategoryModel(
    'Pizza',
    'assets/categories/pizza.svg',
  ),
  FoodCategoryType.SOUP: FoodCategoryModel(
    'Soup',
    'assets/categories/soup.svg',
  ),
  FoodCategoryType.SUMMER: FoodCategoryModel(
    'Summer',
    'assets/categories/summer.svg',
  ),
};

List<FoodCategoryModel> getAllCategories() {
  List<FoodCategoryModel> categories = List();
  for (FoodCategoryType category in FoodCategoryType.values) {
    categories.add(foodCategoryTypeName[category]);
  }
  return categories;
}
