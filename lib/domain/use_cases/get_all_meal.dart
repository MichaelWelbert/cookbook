import 'package:cookbook/domain/entities/meal.dart';
import 'package:cookbook/domain/repository/interface_domain_repository_access.dart';

class GetAllMeals {
  final IDomainRepositoryAccess domainRepositoryAccess;

  GetAllMeals(this.domainRepositoryAccess);

  List<Meal> call() {
    return domainRepositoryAccess.getAllMeal();
  }
}
