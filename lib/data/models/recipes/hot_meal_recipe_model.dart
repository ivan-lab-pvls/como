import 'package:italian_food/data/models/recipes/recipe_model.dart';

class HotMealRecipe extends Recipe {
  HotMealRecipe(
      {required super.name, required super.recipe, required super.picURL});
}

final hotMealRecipes = [
  HotMealRecipe(
      name: 'Lasagne alla Bolognese',
      recipe:
          'Preparate un ragù soffriggendo in olio extravergine d\'oliva 1 cipolla, 1 carota e 1 costa di sedano tritati, poi aggiungete 400 g di macinato misto e fate rosolare. Incorporate 400 g di passata di pomodoro e cuocete per almeno 2 ore. Preparate una besciamella riscaldando 500 ml di latte con 50 g di burro, aggiungete 50 g di farina e mescolate fino a ottenere una crema liscia. Montate le lasagne alternando strati di sfoglie all\'uovo, ragù, besciamella e parmigiano grattugiato. Cuocete in forno a 180°C per circa 40 minuti.',
      picURL:
          'https://learnitalianwithannalisa.online/wp-content/uploads/2023/01/Lasagna-1024x1024.webp'),
  HotMealRecipe(
      name: 'Risotto al Funghi Porcini',
      recipe:
          'In una casseruola, tostate 320 g di riso con un filo d\'olio extravergine d\'oliva, poi sfumate con mezzo bicchiere di vino bianco. Aggiungete gradualmente brodo vegetale caldo e 300 g di funghi porcini tagliati a pezzi. Cuocete per circa 18 minuti, mantecate con 50 g di burro e parmigiano grattugiato a piacere. Lasciate riposare per qualche minuto e servite il risotto ben caldo.',
      picURL:
          'https://www.scattidigusto.it/wp-content/uploads/2020/10/risotto-con-i-funghi-porcini-piatto-500x500.jpg'),
  HotMealRecipe(
      name: 'Saltimbocca alla Romana',
      recipe:
          'Battete leggermente 8 fettine di vitello, poi adagiate su ciascuna una fetta di prosciutto crudo e una foglia di salvia, fissate con uno stuzzicadenti. In una padella con burro, fate dorare i saltimbocca da entrambi i lati, poi sfumate con vino bianco e cuocete per pochi minuti. Servite i saltimbocca con il sughetto di cottura.',
      picURL:
          'https://www.italianspoon.com.au/wp-content/uploads/2018/06/441a-970x600.jpg'),
  HotMealRecipe(
      name: 'Ossobuco alla Milanese',
      recipe:
          'Tagliate 4 fette di ossobuco da circa 3 cm, infarinatele leggermente e fatele rosolare in una padella con burro fino a che non siano dorate da entrambi i lati. Aggiungete 1 cipolla tritata finemente e lasciate appassire. Sfumate con un bicchiere di vino bianco, aggiungete brodo di carne fino a coprire e cuocete a fuoco basso per circa 1 ora e mezza. A fine cottura, spolverate con un trito di prezzemolo e scorza di limone (gremolata).',
      picURL:
          'https://www.insidetherustickitchen.com/wp-content/uploads/2021/05/Ossobuco-1200px-inside-the-rustic-kitchen.jpg'),
];
