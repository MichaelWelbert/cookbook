import 'package:cookbook/presentation/domain_access/domain_access.dart';
import 'package:cookbook/util/colors.dart';
import 'package:cookbook/util/fonts.dart';
import 'package:cookbook/util/size_configure.dart';
import 'package:flutter/material.dart';

import 'category_item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfigure.setUpConfigure(MediaQuery.of(context));

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "Livro de Receitas",
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
        children: DomainAccess.getAllMealsCategory().map((category) {
          return CategoryItem(category: category);
        }).toList(),
      ),
    );
  }
}
