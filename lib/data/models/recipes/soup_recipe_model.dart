import 'package:italian_food/data/models/recipes/recipe_model.dart';

class SoupRecipe extends Recipe {
  SoupRecipe(
      {required super.name, required super.recipe, required super.picURL});
}

final soupRecipes = [
  SoupRecipe(
      name: 'Minestrone',
      recipe:
          'In una pentola grande, soffriggete in 3 cucchiai d\'olio extravergine d\'oliva 1 cipolla tritata, 2 carote e 2 gambi di sedano tagliati a cubetti. Aggiungete 1 zucchina e 2 patate tagliate a cubetti, 200 g di fagioli borlotti già cotti, 400 g di pomodori pelati schiacciati e coprite con brodo vegetale. Cuocete per circa 30 minuti e condite con sale e pepe.',
      picURL:
          'https://www.aberdeenskitchen.com/wp-content/uploads/2019/10/Easy-Classic-Minestrone-Soup-1-FI-Thumbnail-1200X1200.jpg'),
  SoupRecipe(
      name: 'Zuppa di Lenticchie',
      recipe:
          'In una pentola, rosolate 1 cipolla tritata in 2 cucchiai d\'olio extravergine d\'oliva, poi aggiungete 250 g di lenticchie precedentemente ammollate e scolate. Coprite con abbondante brodo vegetale e cuocete per circa 40 minuti. A metà cottura, aggiungete 2 patate tagliate a cubetti. Salate e pepate a piacere.',
      picURL:
          'https://media-assets.lacucinaitaliana.it/photos/620aa625baa9edb2c08c3536/3:2/w_1500,h_1000,c_limit/minestra-di-lenticchie.jpg'),
  SoupRecipe(
      name: 'Zuppa di Farro e Fagioli',
      recipe:
          'Rosolate 1 cipolla tritata e 1 spicchio d\'aglio in 3 cucchiai d\'olio extravergine d\'oliva. Aggiungete 200 g di farro già ammollato, 100 g di fagioli cannellini precotti, 1 rametto di rosmarino e coprite con brodo vegetale. Cuocete per circa 30 minuti, poi rimuovete il rosmarino e servite con un filo d\'olio a crudo.',
      picURL:
          'https://www.poggiodelfarro.com/wp-content/uploads/2015/12/farro_fagioli-235x180.jpg'),
  SoupRecipe(
      name: 'Stracciatella Romana',
      recipe:
          'Portate a ebollizione 1,5 litri di brodo di carne. In una ciotola, sbattete 2 uova con 50 g di parmigiano grattugiato, sale e una manciata di prezzemolo tritato. Versate il composto nel brodo bollente e mescolate energicamente per qualche minuto, fino a quando le uova non avranno formato dei "stracci". Servite la zuppa ben calda.',
      picURL:
          'https://www.giallozafferano.it/images/165-16569/Stracciatella-alla-romana_780x520_wm.jpg'),
];
