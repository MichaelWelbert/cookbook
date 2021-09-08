import 'package:cookbook/domain/repository/interface_domain_repository_access.dart';
import 'package:cookbook/domain/use_cases/get_all_meal.dart';
import 'package:cookbook/domain/use_cases/get_all_meal_category.dart';
import 'package:cookbook/domain/use_cases/get_all_meals_from_the_category.dart';
import 'package:cookbook/domain/use_cases/get_category_by_id.dart';
import 'package:cookbook/domain/use_cases/get_meal_by_id.dart';
import 'package:cookbook/presentation/domain_access/interface_presentation_domain_access.dart';

import 'package:cookbook/domain/entities/meal.dart';

import 'entities/meal_category.dart';

class PresentationDomainAccess implements IPresentationDomainAccess {
  final IDomainRepositoryAccess domainRepositoryAccess;

  PresentationDomainAccess(this.domainRepositoryAccess);
  @override
  List<Meal> getAllMealsFromTheCategory(String category) {
    return GetAllMealsFromTheCategory(domainRepositoryAccess)(category);
  }

  @override
  List<Meal> getAllMeals() {
    return GetAllMeals(domainRepositoryAccess)();
  }

  @override
  List<MealCategory> getAllMealsCategory() {
    return GetAllMealsCategory(domainRepositoryAccess)();
  }

  @override
  Meal getMealById(String id) {
    return GetMealById(domainRepositoryAccess)(id);
  }

  @override
  MealCategory getCategoryById(String id) {
    return GetCategoryById(domainRepositoryAccess)(id);
  }
}
