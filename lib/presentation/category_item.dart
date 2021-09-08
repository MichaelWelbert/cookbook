import 'package:cookbook/domain/entities/meal_category.dart';
import 'package:cookbook/route/routes.dart';
import 'package:cookbook/util/colors.dart';
import 'package:cookbook/util/fonts.dart';
import 'package:cookbook/util/size_configure.dart';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CategoryItem extends StatelessWidget {
  final MealCategory category;

  const CategoryItem({required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Modular.to.pushNamed(Routes.categoryScreen + "/${(category.id)}"),
      splashColor: KColors.whiteColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage("assets/category/" + category.imageUrl),
            colorFilter: ColorFilter.mode(KColors.blackColor.withOpacity(0.2), BlendMode.darken),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          alignment: Alignment.bottomRight,
          child: RichText(
            text: TextSpan(
              text: category.title,
              style: KTextStyle.title(fontSize: 12 * SizeConfigure.screenFactorSizeMultiplier, color: KColors.whiteColor),
            ),
          ),
        ),
      ),
    );
  }
}
