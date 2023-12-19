import 'package:italian_food/data/models/recipes/recipe_model.dart';

class SaladRecipe extends Recipe {
  SaladRecipe(
      {required super.name, required super.recipe, required super.picURL});
}

final saladRecipes = [
  SaladRecipe(
      name: 'Insalata Caprese',
      recipe:
          'Tagliate 3 pomodori maturi e 250 g di mozzarella di bufala a fette e disponeteli a strati su un piatto. Condite con basilico fresco, un pizzico di sale, pepe nero e un generoso giro d\'olio extravergine d\'oliva.',
      picURL:
          'https://www.196flavors.com/wp-content/uploads/2021/05/insalata-caprese-2fp.jpg'),
  SaladRecipe(
      name: 'Insalata di Rucola e Parmigiano',
      recipe:
          'In una ciotola, mescolate 100 g di rucola lavata e asciutta con scaglie di parmigiano reggiano (circa 50 g), aggiungete sale, pepe e condite con olio extravergine d\'oliva e succo di limone fresco a piacere.',
      picURL:
          'https://www.fattoincasadabenedetta.it/wp-content/uploads/2017/04/anteprima-1-1200x900.jpg'),
  SaladRecipe(
      name: 'Panzanella',
      recipe:
          'Tagliate in cubetti 200 g di pane raffermo e inumiditelo leggermente con acqua e un po\' di aceto. Aggiungete 2 pomodori maturi tagliati a cubetti, mezzo cetriolo affettato, una cipolla rossa piccola affettata sottilmente, basilico strappato a mano e condite il tutto con olio extravergine d\'oliva, sale e pepe. Lasciate riposare per almeno mezz\'ora prima di servire.',
      picURL:
          'https://assets.epicurious.com/photos/6491c60ecdecaa7385424100/3:2/w_6576,h_4384,c_limit/Panzanella_RECIPE_061523_55211.jpg'),
  SaladRecipe(
      name: 'Insalata Mediterranea',
      recipe:
          'In una ciotola grande, unire 150 g di lattuga tagliuzzata, 100 g di pomodorini tagliati a metà, 50 g di olive nere snocciolate, 1 peperone rosso tagliato a listarelle, 1 cucchiaino di capperi e 100 g di feta sbriciolata. Condire con olio extravergine d\'oliva, succo di mezzo limone, sale e pepe prima di servire.',
      picURL:
          'https://www.fattorieosella.it/wp-content/uploads/2016/07/insalata-mediterranea-linea-osella-1-770x536.jpg'),
];
