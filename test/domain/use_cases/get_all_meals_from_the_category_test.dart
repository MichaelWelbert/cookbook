import 'package:cookbook/domain/entities/meal.dart';
import 'package:cookbook/domain/repository/interface_domain_repository_access.dart';
import 'package:cookbook/domain/use_cases/get_all_meals_from_the_category.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDomainRepository extends Mock implements IDomainRepositoryAccess {}

void main() {
  late GetAllMealsFromTheCategory getMealCategory;
  late IDomainRepositoryAccess domainRepository;
  setUp(() {
    domainRepository = MockDomainRepository();
    getMealCategory = GetAllMealsFromTheCategory(domainRepository);
  });

  List<Meal> testMeal = [
    Meal(
      id: "m1",
      categoriesId: ["Italian", "FastAndEasy"],
      title: "Espaguete com Molho de Tomate ",
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      ingredients: [],
      steps: [],
      durationInMinutes: 20,
    ),
    Meal(
      id: "m2",
      categoriesId: ["FastAndEasy"],
      title: "Torrada Havaiana ",
      imageUrl: 'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
      ingredients: [],
      steps: [],
      durationInMinutes: 10,
    ),
    Meal(
      id: "m3",
      categoriesId: ["Germany"],
      title: "Torrada alemã",
      imageUrl: 'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
      ingredients: [],
      steps: [],
      durationInMinutes: 10,
    ),
  ];

  test('Ao passar um identificador de categoria, deve retornar todas as refeições pertencentes a categoria informada', () {
    when(() => domainRepository.getAllMeal()).thenReturn(testMeal);

    List<Meal> meals = getMealCategory("FastAndEasy");

    expect(meals.length, 2);
    expect(meals[0], testMeal[0]);
    expect(meals[1], testMeal[1]);
  });
}
