import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:italian_food/views/app/widgets/category_widget.dart';
import 'package:italian_food/views/app/widgets/search_bar_widget.dart';
import 'package:italian_food/views/consts/app_text_style/menu_style.dart';
import 'package:italian_food/views/menu/widgets/menu_item_widget.dart';

import '../../../blocs/search_cubit/search_cubit.dart';
import '../../../blocs/search_cubit/search_state.dart';
import '../../../data/models/dishes/dessert_model.dart';
import '../../../data/models/dishes/dish_model.dart';
import '../../../data/models/dishes/hot_meal_model.dart';
import '../../../data/models/dishes/pizza_model.dart';
import '../../../data/models/dishes/salad_model.dart';
import '../../../data/models/dishes/soup_model.dart';
import '../../consts/app_colors.dart';
import '../../consts/app_text_style/settings_style.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  String selectedCategory = 'All Categories';

  List<Dish> getDishesForSelectedCategory() {
    switch (selectedCategory) {
      case 'Pizza':
        return pizza;
      case 'Salad':
        return salads;
      case 'Hot Meal':
        return hotMeals;
      case 'Soup':
        return soups;
      case 'Dessert':
        return desserts;
      case 'All Categories':
      default:
        return [
          ...pizza,
          ...salads,
          ...hotMeals,
          ...soups,
          ...desserts,
        ];
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Dish> displayedDishes = getDishesForSelectedCategory();
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
            'Benvenuti nel mondo\n della cucina italiana',
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
                    'Piatti italiani',
                    style: MenuTextStyle.subtitle,
                  ),
                ],
              ),
            ),
            Expanded(
              child: BlocBuilder<SearchCubit, SearchCubitState>(
                  builder: (context, state) {
                var filteredItems = displayedDishes.where((e) =>
                    e.name.toLowerCase().contains(state.search.toLowerCase()));
                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.0,
                  ),
                  itemCount: filteredItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return MenuItemWidget(dish: filteredItems.elementAt(index));
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
