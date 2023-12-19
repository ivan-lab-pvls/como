import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

import '../../../data/models/recipes/recipe_model.dart';
import '../../../util/app_routes.dart';
import '../../consts/app_colors.dart';
import '../../consts/app_text_style/menu_style.dart';

class RecipeWidget extends StatelessWidget {
  const RecipeWidget({super.key, required this.recipe});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(AppRoutes.recipe, arguments: recipe);
        },
        child: Container(
          height: screenSize.height * 0.15,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.0001),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: AppColors.darkGreyColor,
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: FancyShimmerImage(
                  width: screenSize.width * 0.4,
                  boxFit: BoxFit.cover,
                  imageUrl: recipe.picURL,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recipe.name,
                        maxLines: 1,
                        style: MenuTextStyle.itemTitle,
                      ),
                      SizedBox(
                        height: screenSize.height * 0.02,
                      ),
                      Expanded(
                        child: Text(
                          recipe.recipe,
                          style: MenuTextStyle.dishScreenText,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.02,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
