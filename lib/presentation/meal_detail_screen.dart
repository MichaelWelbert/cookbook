import 'package:cookbook/domain/entities/meal.dart';
import 'package:cookbook/presentation/domain_access/domain_access.dart';
import 'package:cookbook/route/routes.dart';
import 'package:cookbook/util/colors.dart';
import 'package:cookbook/util/fonts.dart';
import 'package:cookbook/util/size_configure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MealDetailScreen extends StatelessWidget {
  final String mealId;
  const MealDetailScreen({required this.mealId});

  @override
  Widget build(BuildContext context) {
    Meal meal = DomainAccess.getMealById(mealId);
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
            text: meal.title,
            style: KTextStyle.title(fontSize: 18 * SizeConfigure.screenFactorSizeMultiplier, color: KColors.blackColor),
          ),
        ),
        backgroundColor: KColors.whiteColor,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Container(
                  height: 300 * SizeConfigure.screenFactorSizeMultiplier,
                  width: 400 * SizeConfigure.screenFactorSizeMultiplier,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    child: Hero(
                      tag: meal.id,
                      child: Image.network(
                        meal.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10 * SizeConfigure.screenFactorSizeMultiplier,
                ),
                Container(
                  width: 270 * SizeConfigure.screenFactorSizeMultiplier,
                  height: 70 * SizeConfigure.screenFactorSizeMultiplier,
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      text: "Ingredientes",
                      style: KTextStyle.title(fontSize: 20 * SizeConfigure.screenFactorSizeMultiplier, color: KColors.blackColor),
                    ),
                  ),
                ),
                Column(
                  children: List<Widget>.generate(meal.ingredients.length, (int index) {
                    return Container(
                      width: 330 * SizeConfigure.screenFactorSizeMultiplier,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 40 * SizeConfigure.screenFactorSizeMultiplier,
                            child: ListTile(
                              title: RichText(
                                text: TextSpan(
                                  text: meal.ingredients[index],
                                  style: KTextStyle.body(fontSize: 15 * SizeConfigure.screenFactorSizeMultiplier, color: KColors.blackColor),
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 10 * SizeConfigure.screenFactorSizeMultiplier,
                          ),
                        ],
                      ),
                    );
                  }),
                ),
                SizedBox(
                  height: 10 * SizeConfigure.screenFactorSizeMultiplier,
                ),
                Container(
                  width: 270 * SizeConfigure.screenFactorSizeMultiplier,
                  height: 80 * SizeConfigure.screenFactorSizeMultiplier,
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      text: "Passos",
                      style: KTextStyle.title(fontSize: 20 * SizeConfigure.screenFactorSizeMultiplier, color: KColors.blackColor),
                    ),
                  ),
                ),
                Column(
                  children: List<Widget>.generate(meal.steps.length, (int index) {
                    return Container(
                      width: 400 * SizeConfigure.screenFactorSizeMultiplier,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 60 * SizeConfigure.screenFactorSizeMultiplier,
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: KColors.whiteColor,
                                child: RichText(
                                  text: TextSpan(
                                    text: (index + 1).toString(),
                                    style: KTextStyle.title(
                                        fontSize: 15 * SizeConfigure.screenFactorSizeMultiplier, color: KColors.lightGrayColor.withOpacity(0.8)),
                                  ),
                                ),
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: meal.steps[index],
                                  style: KTextStyle.body(fontSize: 15 * SizeConfigure.screenFactorSizeMultiplier, color: KColors.blackColor),
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 10 * SizeConfigure.screenFactorSizeMultiplier,
                          ),
                        ],
                      ),
                    );
                  }),
                ),
                SizedBox(
                  height: 20 * SizeConfigure.screenFactorSizeMultiplier,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
