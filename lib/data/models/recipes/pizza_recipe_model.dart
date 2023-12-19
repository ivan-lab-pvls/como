import 'package:italian_food/data/models/recipes/recipe_model.dart';

class PizzaRecipe extends Recipe {
  PizzaRecipe(
      {required super.name, required super.recipe, required super.picURL});
}

final pizzaRecipes = [
  PizzaRecipe(
      name: 'Pizza Margherita',
      recipe:
          'Impastate 250 g di farina 00 con 15 g di lievito di birra fresco sciolto in 160 ml di acqua tiepida e un pizzico di sale. Lasciate lievitare l’impasto fino al raddoppio del volume. Stendete la pasta e conditela con salsa di pomodoro, poi aggiungete 125 g di mozzarella fiordilatte tagliata a pezzetti, un filo d\'olio extravergine d\'oliva e infine guarnite con foglie di basilico fresco. Cuocete in forno caldo a 250°C per circa 10-15 minuti.',
      picURL:
          'https://ca.ooni.com/cdn/shop/articles/20220211142645-margherita-9920.jpg?crop=center&height=800&v=1661341987&width=800'),
  PizzaRecipe(
      name: 'Pizza Quattro Stagioni',
      recipe:
          'Preparate un impasto con 250 g di farina 00, 15 g di lievito di birra sciolto in 160 ml di acqua tiepida e un pizzico di sale. Una volta lievitato, dividete la superficie della pizza in quattro spicchi, mettendo in ognuno gli ingredienti rappresentativi delle quattro stagioni: carciofini sott\'olio per la primavera, olive nere e peperoni per l\'estate, funghi porcini per l\'autunno e prosciutto cotto per l\'inverno. Completate con 125 g di mozzarella e cuocete a 250°C per 15 minuti.',
      picURL:
          'https://www.yeprecipes.com/data/media/7/pizza-quattro-stagioni.jpg'),
  PizzaRecipe(
      name: 'Pizza Diavola',
      recipe:
          'Dopo aver preparato l\'impasto con 250 g di farina, 15 g di lievito, 160 ml di acqua e sale, stendetelo e aggiungete la salsa di pomodoro. Coprite con 125 g di mozzarella affettata e disponete sopra delle fette di salame piccante a piacere. Terminare con un filo d\'olio e cuocere nel forno preriscaldato a 250°C per circa 15 minuti.',
      picURL:
          'https://res.cloudinary.com/norgesgruppen/images/c_scale,dpr_auto,f_auto,q_auto:eco,w_1600/axcdfcfmyahxjmmj99pe/pizza-diavola'),
  PizzaRecipe(
      name: 'Pizza Capricciosa',
      recipe:
          'Per l\'impasto mescolate 250 g di farina 00 con 15 g di lievito di birra fresco sciolto in 160 ml di acqua tiepida e un pizzico di sale. Una volta pronto, stendete l\'impasto e aggiungete salsa di pomodoro e 125 g di mozzarella tagliata a dadini. Distribuite sopra fette di prosciutto cotto, carciofini, funghi a fette e olive nere. Cuocete la pizza in forno pre-riscaldato a 250°C per circa 10-15 min',
      picURL:
          'https://i0.wp.com/pizzabelga.com/wp-content/uploads/2018/12/capricciosa.jpg?fit=500%2C500&ssl=1'),
];
