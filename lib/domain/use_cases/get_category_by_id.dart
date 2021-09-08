import 'package:cookbook/domain/entities/meal_category.dart';
import 'package:cookbook/domain/repository/interface_domain_repository_access.dart';

class GetCategoryById {
  final IDomainRepositoryAccess domainRepositoryAccess;

  GetCategoryById(this.domainRepositoryAccess);

  MealCategory call(String id) {
    List<MealCategory> mealCategories = domainRepositoryAccess.getCategories();
    MealCategory mealCategory = mealCategories.firstWhere((meal) => meal.id == id);
    return mealCategory;
  }
}
