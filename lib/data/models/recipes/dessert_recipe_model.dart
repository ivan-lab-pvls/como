import 'package:italian_food/data/models/recipes/recipe_model.dart';

class DessertRecipe extends Recipe {
  DessertRecipe(
      {required super.name, required super.recipe, required super.picURL});
}

final dessertRecipes = [
  DessertRecipe(
      name: 'Tiramisù',
      recipe:
          'Montate 4 tuorli d\'uovo con 100 g di zucchero fino a ottenere un composto chiaro e spumoso, poi incorporate delicatamente 500 g di mascarpone. A parte, montate a neve 4 albumi e incorporateli al composto di mascarpone. Inzuppate 300 g di savoiardi nel caffè espresso freddo e disponeteli su uno strato in una pirofila. Spalmate sopra una parte della crema al mascarpone. Fate un secondo strato di savoiardi e coprite con il resto della crema. Spolverizzate con cacao amaro in polvere e lasciate riposare in frigorifero per qualche ora prima di servire.',
      picURL:
          'https://www.flavoursholidays.co.uk/wp-content/uploads/2020/07/Tiramisu.jpg'),
  DessertRecipe(
      name: 'Panna Cotta',
      recipe:
          'Scaldate 500 ml di panna liquida con 100 g di zucchero e una stecca di vaniglia incisa per far rilasciare i semi. Quando la panna è calda (non bollente), togliete la vaniglia e aggiungete 12 g di gelatina in fogli, precedentemente ammollata in acqua fredda e strizzata. Mescolate fino a completo scioglimento della gelatina, poi versate in stampini e lasciate raffreddare in frigorifero per almeno 4 ore. Servite con un coulis di frutti di bosco o caramello.',
      picURL:
          'https://hips.hearstapps.com/hmg-prod/images/delish-202102-pannacotta-024-ls-1612544700.jpg?crop=0.670xw:1.00xh;0.0625xw,0&resize=1200:*'),
  DessertRecipe(
      name: 'Cannoli Siciliani',
      recipe:
          'Per la scorza, impastate 250 g di farina con 30 g di strutto, 30 g di zucchero, un pizzico di sale, un bicchierino di Marsala e un uovo. Lavorate fino ad ottenere una pasta elastica, poi stendetela e ricavate dei cerchi. Avvolgete ogni cerchio intorno a un tubo metallico e friggete in olio bollente. Per il ripieno, mescolate 500 g di ricotta setacciata con 150 g di zucchero a velo, gocce di cioccolato e canditi a piacere. Farcite i cannoli freddi con questa crema e spolverizzate di zucchero a velo prima di servire.',
      picURL:
          'https://i.pinimg.com/originals/01/d3/80/01d380b12248ce52e8370dd6da55fc69.jpg'),
  DessertRecipe(
      name: 'Gelato alla Stracciatella',
      recipe:
          'Preparate una crema inglese con 500 ml di latte, 150 g di zucchero e 6 tuorli d\'uovo, riscaldando il tutto a bagnomaria e mescolando fino a che non si addensa. Fate raffreddare la crema, poi aggiungete 250 ml di panna montata. Versate il composto nella gelatiera e, quando inizia ad addensarsi, aggiungete 100 g di cioccolato fondente tritato a pezzetti. Continuate a mantecare fino a che il gelato non è pronto, poi conservate in freezer.',
      picURL:
          'https://www.mamablip.com/storage/gelato%20alla%20stracciatella_8331671103636.jpg')
];
