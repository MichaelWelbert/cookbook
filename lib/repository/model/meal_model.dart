import 'package:cookbook/domain/entities/meal.dart';

class MealModel extends Meal {
  MealModel({
    required String id,
    required List<String> categoriesId,
    required String title,
    required String imageUrl,
    required List<String> ingredients,
    required List<String> steps,
    required int durationInMinutes,
  }) : super(
          id: id,
          categoriesId: categoriesId,
          title: title,
          imageUrl: imageUrl,
          ingredients: ingredients,
          steps: steps,
          durationInMinutes: durationInMinutes,
        );
}
