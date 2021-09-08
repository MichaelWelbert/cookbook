import 'package:cookbook/domain/entities/meal.dart';
import 'package:cookbook/domain/entities/meal_category.dart';
import 'package:cookbook/domain/presentation_domain_access.dart';
import 'package:cookbook/domain/repository/interface_domain_repository_access.dart';

import 'package:cookbook/repository/domain_repository_access.dart';
import 'interface_presentation_domain_access.dart';

class DomainAccess {
  DomainAccess._();
  static IDomainRepositoryAccess _repository = DomainRepositoryAccess();
  static IPresentationDomainAccess _domain = PresentationDomainAccess(_repository);

  static List<Meal> getAllMealsFromTheCategory(String category) => _domain.getAllMealsFromTheCategory(category);

  static List<Meal> getAllMeals() => _domain.getAllMeals();

  static List<MealCategory> getAllMealsCategory() => _domain.getAllMealsCategory();

  static Meal getMealById(String id) => _domain.getMealById(id);

  static MealCategory getCategoryById(String id) => _domain.getCategoryById(id);
}
