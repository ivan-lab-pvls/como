import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:italian_food/views/consts/app_colors.dart';
import 'package:italian_food/views/consts/app_text_style/menu_style.dart';

import '../../../data/models/dishes/dish_model.dart';
import '../../../util/app_routes.dart';

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({
    super.key,
    required this.dish,
  });

  final Dish dish;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(screenSize.width * 0.01),
      child: Material(
        elevation: 0,
        borderRadius: BorderRadius.circular(8.0),
        color: Theme.of(context).cardColor,
        child: InkWell(
          splashColor: Colors.transparent,
          onTap: () =>
              Navigator.of(context).pushNamed(AppRoutes.dish, arguments: dish),
          child: ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              color: AppColors.darkGreyColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FancyShimmerImage(
                    imageUrl: dish.picURL,
                    boxFit: BoxFit.cover,
                    width: double.infinity,
                    height: screenSize.height * 0.14,
                  ),
                  SizedBox(height: screenSize.height * 0.001),
                  Padding(
                    padding: EdgeInsets.only(
                      left: screenSize.height * 0.001,
                      top: screenSize.height * 0.0025,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            dish.name,
                            softWrap: true,
                            style: MenuTextStyle.itemTitle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
