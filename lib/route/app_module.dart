import 'package:cookbook/presentation/categories_meals_screen.dart';
import 'package:cookbook/presentation/home.dart';
import 'package:cookbook/presentation/meal_detail_screen.dart';
import 'package:cookbook/route/routes.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => Home(), transition: TransitionType.fadeIn),
    ChildRoute(Routes.homeScreen, child: (_, __) => Home(), transition: TransitionType.fadeIn),
    ChildRoute(
      Routes.categoryScreenDetail,
      child: (_, args) => CategoriesMealsScreen(category: args.params['id']),
      transition: TransitionType.rightToLeftWithFade,
    ),
    ChildRoute(
      Routes.mealScreenDetail,
      child: (_, args) => MealDetailScreen(mealId: args.params['id']),
      transition: TransitionType.rightToLeftWithFade,
    ),
  ];
}
