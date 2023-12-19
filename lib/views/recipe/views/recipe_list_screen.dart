import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:italian_food/data/models/recipes/dessert_recipe_model.dart';
import 'package:italian_food/data/models/recipes/hot_meal_recipe_model.dart';
import 'package:italian_food/data/models/recipes/pizza_recipe_model.dart';
import 'package:italian_food/data/models/recipes/salad_recipe_model.dart';
import 'package:italian_food/data/models/recipes/soup_recipe_model.dart';
import 'package:italian_food/views/app/widgets/category_widget.dart';
import 'package:italian_food/views/app/widgets/search_bar_widget.dart';
import 'package:italian_food/views/consts/app_text_style/menu_style.dart';

import '../../../blocs/search_cubit/search_cubit.dart';
import '../../../blocs/search_cubit/search_state.dart';
import '../../../data/models/recipes/recipe_model.dart';
import '../../consts/app_colors.dart';
import '../../consts/app_text_style/settings_style.dart';
import '../widgets/recipe_widget.dart';

class RecipeListScreen extends StatefulWidget {
  const RecipeListScreen({super.key});

  @override
  State<RecipeListScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<RecipeListScreen> {
  String selectedCategory = 'All Categories';

  List<Recipe> getRecipesForSelectedCategory() {
    switch (selectedCategory) {
      case 'Pizza':
        return pizzaRecipes;
      case 'Salad':
        return saladRecipes;
      case 'Hot Meal':
        return hotMealRecipes;
      case 'Soup':
        return soupRecipes;
      case 'Dessert':
        return dessertRecipes;
      case 'All Categories':
      default:
        return [
          ...pizzaRecipes,
          ...saladRecipes,
          ...hotMealRecipes,
          ...soupRecipes,
          ...dessertRecipes,
        ];
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Recipe> displayedRecipes = getRecipesForSelectedCategory();
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: size.width * 0.85,
          ),
          child: const Text(
            'Ricette',
            style: SettingsTextStyle.screenTitle,
            softWrap: true,
            overflow: TextOverflow.visible,
          ),
        ),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: false,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.02),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.01),
            const SearchBarWidget(),
            Padding(
              padding: EdgeInsets.all(size.width * 0.01),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Categorie',
                    style: MenuTextStyle.subtitle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(
                size.width * 0.01,
              ),
              child: SizedBox(
                height: size.height * 0.04,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryWidget(
                      onTap: () {
                        setState(() {
                          selectedCategory = 'All Categories';
                        });
                      },
                      title: 'Tutto',
                      icon: null,
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    CategoryWidget(
                        onTap: () {
                          setState(() {
                            selectedCategory = 'Pizza';
                          });
                        },
                        icon: const AssetImage('assets/icons/pizza.png'),
                        title: 'Pizza'),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    CategoryWidget(
                        onTap: () {
                          setState(() {
                            selectedCategory = 'Salad';
                          });
                        },
                        icon: const AssetImage('assets/icons/insalate.png'),
                        title: 'Insalate'),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    CategoryWidget(
                        onTap: () {
                          setState(() {
                            selectedCategory = 'Hot Meal';
                          });
                        },
                        icon: const AssetImage('assets/icons/piatto_caldo.png'),
                        title: 'Piatto Caldo'),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    CategoryWidget(
                        onTap: () {
                          setState(() {
                            selectedCategory = 'Soup';
                          });
                        },
                        icon: const AssetImage('assets/icons/zuppe.png'),
                        title: 'Zuppe'),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    CategoryWidget(
                        onTap: () {
                          setState(() {
                            selectedCategory = 'Dessert';
                          });
                        },
                        icon: const AssetImage('assets/icons/dessert.png'),
                        title: 'Dessert'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(size.width * 0.015),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Ricette italiane',
                    style: MenuTextStyle.subtitle,
                  ),
                ],
              ),
            ),
            Expanded(
              child: BlocBuilder<SearchCubit, SearchCubitState>(
                  builder: (context, state) {
                var filteredItems = displayedRecipes.where((e) =>
                    e.name.toLowerCase().contains(state.search.toLowerCase()));
                return ListView.builder(
                  itemCount: filteredItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return RecipeWidget(recipe: filteredItems.elementAt(index));
                  },
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
