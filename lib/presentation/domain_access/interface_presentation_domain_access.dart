import 'package:cookbook/domain/entities/meal.dart';
import 'package:cookbook/domain/entities/meal_category.dart';

abstract class IPresentationDomainAccess {
  List<Meal> getAllMeals();
  List<MealCategory> getAllMealsCategory();
  List<Meal> getAllMealsFromTheCategory(String category);
  Meal getMealById(String id);
  MealCategory getCategoryById(String id);
}
