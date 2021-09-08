import 'package:cookbook/domain/entities/meal_category.dart';

class MealCategoryModel extends MealCategory {
  MealCategoryModel({
    required id,
    required title,
    required imageUrl,
  }) : super(
          id: id,
          imageUrl: imageUrl,
          title: title,
        );
}
