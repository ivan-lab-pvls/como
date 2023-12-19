import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:italian_food/views/recipe/views/recipe_list_screen.dart';
import 'package:italian_food/views/settings/view/settings_screen.dart';

import '../../consts/app_colors.dart';
import '../../indridients/views/ingredients_screen.dart';
import '../../menu/views/menu_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> homeWidgets = [
    const MenuScreen(),
    const IngredientsScreen(),
    const RecipeListScreen(),
    const SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: homeWidgets[currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
            child: BottomNavigationBar(
              backgroundColor: AppColors.blackColor.withOpacity(0.8),
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/cutlery.svg',
                    width: 20.0,
                    height: 20.0,
                    color: currentIndex == 0
                        ? AppColors.darkOrangeColor
                        : AppColors.lightGreyColor,
                  ),
                  label: 'Categories',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/fire.svg',
                    width: 20.0,
                    height: 20.0,
                    color: currentIndex == 1
                        ? AppColors.darkOrangeColor
                        : AppColors.lightGreyColor,
                  ),
                  label: 'Progress',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.sticky_note_2_outlined,
                    color: currentIndex == 2
                        ? AppColors.darkOrangeColor
                        : AppColors.lightGreyColor,
                  ),
                  label: 'Progress',
                ),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/settings.svg',
                      width: 20.0,
                      height: 20.0,
                      color: currentIndex == 3
                          ? AppColors.darkOrangeColor
                          : AppColors.lightGreyColor,
                    ),
                    label: 'News'),
              ],
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              // elevation: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
