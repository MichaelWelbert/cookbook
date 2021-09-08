import 'package:cookbook/domain/entities/meal_category.dart';
import 'package:cookbook/domain/repository/interface_domain_repository_access.dart';

class GetAllMealsCategory {
  final IDomainRepositoryAccess domainRepositoryAccess;

  GetAllMealsCategory(this.domainRepositoryAccess);

  List<MealCategory> call() {
    return domainRepositoryAccess.getCategories();
  }
}
