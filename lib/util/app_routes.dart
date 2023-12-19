import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:italian_food/blocs/search_cubit/search_cubit.dart';
import 'package:italian_food/data/models/recipes/recipe_model.dart';

import '../blocs/onboarding_cubit/onboarding_cubit.dart';
import '../data/models/dishes/dish_model.dart';
import '../data/repository/onboarding_repo.dart';
import '../views/app/views/home_screen.dart';
import '../views/menu/views/dish_screen.dart';
import '../views/onboarding/views/onboarding_screen.dart';
import '../views/recipe/views/recipe_screen.dart';

abstract class AppRoutes {
  static const home = 'home';
  static const welcome = 'welcome';
  static const menu = 'menu';
  static const settings = 'settings';
  static const dish = 'dish';
  static const recipe = 'recipe';

  static MaterialPageRoute onGenerateRoute(RouteSettings settings) {
    final Widget child;

    OnboardingRepository onboardingRepository = OnboardingRepository();
    OnboardingCubit onboardingCubit = OnboardingCubit(onboardingRepository);

    switch (settings.name) {
      case home:
        child = BlocProvider<SearchCubit>(
          create: (_) => SearchCubit(),
          child: const HomeScreen(),
        );

      case dish:
        Dish dish = settings.arguments as Dish;
        child = DishScreen(
          dish: dish,
        );
      case recipe:
        Recipe recipe = settings.arguments as Recipe;
        child = RecipeScreen(
          recipe: recipe,
        );
      default:
        child = BlocProvider(
          create: (context) => onboardingCubit,
          child: const OnboardingScreen(),
        );
    }
    return MaterialPageRoute(builder: (_) => child);
  }
}
