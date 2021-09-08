import 'package:cookbook/domain/entities/meal.dart';
import 'package:cookbook/domain/entities/meal_category.dart';
import 'package:cookbook/presentation/domain_access/domain_access.dart';
import 'package:cookbook/route/routes.dart';
import 'package:cookbook/util/colors.dart';
import 'package:cookbook/util/fonts.dart';
import 'package:cookbook/util/size_configure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'meal_item.dart';

class CategoriesMealsScreen extends StatelessWidget {
  final String category;

  CategoriesMealsScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    final List<Meal> meals = DomainAccess.getAllMealsFromTheCategory(category);
    final MealCategory mealCategory = DomainAccess.getCategoryById(category);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: KColors.blackColor,
          ),
          onPressed: () => Modular.to.pop(),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: KColors.blackColor,
            ),
            onPressed: () => Modular.to.navigate(Routes.homeScreen),
          ),
        ],
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: mealCategory.title,
            style: KTextStyle.title(fontSize: 18 * SizeConfigure.screenFactorSizeMultiplier, color: KColors.blackColor),
          ),
        ),
        backgroundColor: KColors.whiteColor,
      ),
      body: GridView(
        padding: const EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200 * SizeConfigure.screenFactorSizeMultiplier,
          childAspectRatio: (4 / 5) * SizeConfigure.screenFactorSizeMultiplier,
          crossAxisSpacing: 12 * SizeConfigure.screenFactorSizeMultiplier,
          mainAxisSpacing: 12 * SizeConfigure.screenFactorSizeMultiplier,
        ),
        children: meals.map((meal) {
          return MealItem(meal);
        }).toList(),
      ),
    );
  }
}
