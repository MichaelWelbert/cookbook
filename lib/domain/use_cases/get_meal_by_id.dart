import 'package:cookbook/domain/entities/meal.dart';
import 'package:cookbook/domain/repository/interface_domain_repository_access.dart';

class GetMealById {
  final IDomainRepositoryAccess domainRepositoryAccess;

  GetMealById(this.domainRepositoryAccess);

  Meal call(String id) {
    List<Meal> meals = domainRepositoryAccess.getAllMeal();
    Meal meal = meals.firstWhere((meal) => meal.id == id);
    return meal;
  }
}
