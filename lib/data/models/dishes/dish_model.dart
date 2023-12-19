class Dish {
  final String name;
  final String calories;
  final String category;
  final List<String> ingredients;
  final String history;
  final String picURL;

  Dish({
    required this.name,
    required this.calories,
    required this.history,
    required this.ingredients,
    required this.category,
    required this.picURL,
  });
}
