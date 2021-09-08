import 'package:cookbook/domain/entities/meal.dart';
import 'package:cookbook/domain/entities/meal_category.dart';

abstract class IDomainRepositoryAccess {
  List<Meal> getAllMeal();
  List<MealCategory> getCategories();
}
