import 'package:cookbook/repository/model/meal_category_model.dart';

class MealDataCategory {
  MealDataCategory._();

  static List<MealCategoryModel> dummyMealCategory = [
    MealCategoryModel(
      id: "Italian",
      title: "Italiano",
      imageUrl: "Italian.png",
    ),
    MealCategoryModel(
      id: "Hamburgers",
      title: "Hamburgers",
      imageUrl: "Hamburgers.png",
    ),
    MealCategoryModel(
      id: "FastAndEasy",
      title: "Rápido e Fácil",
      imageUrl: "FastAndEasy.png",
    ),
    MealCategoryModel(
      id: "Germany",
      title: "Alemã",
      imageUrl: "Germany.png",
    ),
    MealCategoryModel(
      id: "LightAndHealthy",
      title: "Leve e saudavel",
      imageUrl: "LightAndHealthy.png",
    ),
    MealCategoryModel(
      id: "Exotic",
      title: "Exotica",
      imageUrl: "Exotic.png",
    ),
    MealCategoryModel(
      id: "Breakfest",
      title: "Café da Manhã",
      imageUrl: "Breakfest.png",
    ),
    MealCategoryModel(
      id: "Asiatic",
      title: "Asiatica",
      imageUrl: "Asiatic.png",
    ),
    MealCategoryModel(
      id: "French",
      title: "Francesa",
      imageUrl: "French.png",
    ),
    MealCategoryModel(
      id: "Summer",
      title: "Verão",
      imageUrl: "Summer.png",
    ),
  ];
}
