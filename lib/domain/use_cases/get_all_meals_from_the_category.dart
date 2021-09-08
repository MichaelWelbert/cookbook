import 'package:cookbook/domain/entities/meal.dart';
import 'package:cookbook/domain/repository/interface_domain_repository_access.dart';

class GetAllMealsFromTheCategory {
  final IDomainRepositoryAccess domainRepositoryAccess;

  GetAllMealsFromTheCategory(this.domainRepositoryAccess);

  List<Meal> call(String categoryId) {
    List<Meal> categoryListMeal = domainRepositoryAccess.getAllMeal().where((meal) => meal.categoriesId.contains(categoryId)).toList();
    return categoryListMeal;
  }
}
