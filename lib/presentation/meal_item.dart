import 'package:cookbook/domain/entities/meal.dart';
import 'package:cookbook/route/routes.dart';
import 'package:cookbook/util/colors.dart';
import 'package:cookbook/util/fonts.dart';
import 'package:cookbook/util/size_configure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MealItem extends StatelessWidget {
  final Meal meal;

  const MealItem(this.meal);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Modular.to.pushNamed(Routes.mealScreen + "/${(meal.id)}"),
      splashColor: KColors.whiteColor,
      borderRadius: BorderRadius.circular(15),
      child: Hero(
        tag: meal.id,
        child: Container(
          padding: EdgeInsets.all(15),
          height: 250 * SizeConfigure.screenFactorSizeMultiplier,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: NetworkImage(meal.imageUrl),
              colorFilter: ColorFilter.mode(KColors.blackColor.withOpacity(0.2), BlendMode.darken),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            alignment: Alignment.bottomRight,
            child: RichText(
              text: TextSpan(
                text: meal.title,
                style: KTextStyle.title(fontSize: 12 * SizeConfigure.screenFactorSizeMultiplier, color: KColors.whiteColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
