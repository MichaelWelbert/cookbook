import 'package:cookbook/domain/repository/interface_domain_repository_access.dart';
import 'package:cookbook/repository/data/meal_category.dart';
import 'package:cookbook/repository/model/meal_category_model.dart';

import 'data/meal_data.dart';
import 'model/meal_model.dart';

class DomainRepositoryAccess implements IDomainRepositoryAccess {
  @override
  List<MealModel> getAllMeal() {
    return MealData.dummyMeals;
  }

  @override
  List<MealCategoryModel> getCategories() {
    return MealDataCategory.dummyMealCategory;
  }
}
