import 'package:italian_food/data/models/dishes/dish_model.dart';

class PizzaModel extends Dish {
  PizzaModel(
      {required super.name,
      required super.calories,
      required super.history,
      required super.ingredients,
      super.category = 'pizza',
      required super.picURL});
}

final pizza = [
  PizzaModel(
      name: 'Pizza Margherita',
      calories: '250',
      history:
          'La Pizza Margherita è una delle pizze più famose d\'Italia e fu creata in onore della Regina Margherita di Savoia. I colori della pizza - rosso, bianco e verde - rappresentano la bandiera italiana. È stata inventata a Napoli da Raffaele Esposito nel 1889.',
      ingredients: [
        'Pasta per pizza (farina, acqua, lievito)',
        'salsa di pomodoro',
        'mozzarella',
        'basilico',
        'olio extravergine di oliva',
        'sale'
      ],
      picURL:
          'https://images.prismic.io/eataly-us/ed3fcec7-7994-426d-a5e4-a24be5a95afd_pizza-recipe-main.jpg?auto=compress,format'),
  PizzaModel(
      name: 'Pizza Quattro Stagioni',
      calories: '260',
      history:
          'La Pizza Quattro Stagioni rappresenta le quattro stagioni dell\'anno con diversi ingredienti che si dividono in quattro spicchi della pizza. È una pizza che offre una varietà di sapori e che è molto amata per la sua versatilità.',
      ingredients: [
        'Pasta per pizza',
        'salsa di pomodoro',
        'mozzarella',
        'funghi (inverno)',
        'prosciutto cotto (primavera)',
        'olive nere (estate)',
        'carciofi (autunno)',
        'olio extravergine di oliva',
        'sale'
      ],
      picURL:
          'https://assets.wsimgs.com/wsimgs/ab/images/dp/recipe/202331/0070/img36l.jpg'),
  PizzaModel(
      name: 'Pizza Diavola',
      calories: '280',
      history:
          'La Pizza Diavola prende il nome dalla sua piccantezza. È una variante della pizza salame con l\'aggiunta di peperoncino che le conferisce un gusto deciso e speziato. È molto popolare in tutta Italia, soprattutto tra coloro che amano i sapori intensi.',
      ingredients: [
        'Pasta per pizza',
        'salsa di pomodoro',
        'mozzarella',
        'salame piccante',
        'peperoncino',
        'olio extravergine di oliva',
        'sale'
      ],
      picURL:
          'https://thepizzaheaven.com/wp-content/uploads/2021/07/Pizza-Diavola.jpg'),
  PizzaModel(
      name: 'Pizza Ortolana',
      calories: '220',
      history:
          'La Pizza Ortolana è un omaggio alle verdure dell\'orto, ideale per chi preferisce un\'alternativa vegetariana. È una pizza colorata e salutare che soddisfa il desiderio di una pizza nutriente con un apporto calorico contenuto.',
      ingredients: [
        'Pasta per pizza',
        'salsa di pomodoro',
        'mozzarella',
        'melanzane',
        'zucchine',
        'peperoni',
        'funghi',
        'olio extravergine di oliva',
        'sale'
      ],
      picURL:
          'https://www.manusmenu.com/wp-content/uploads/2015/08/1-Pizza-Ortolana-4-1-of-1.jpg'),
  PizzaModel(
      name: 'Pizza ai Quattro Formaggi',
      calories: '300',
      history:
          'La Pizza ai Quattro Formaggi è una celebrazione della varietà dei formaggi italiani. La scelta dei formaggi può variare a seconda della regione e delle preferenze personali, ma l\'obiettivo è sempre quello di ottenere un equilibrio di sapori tra i diversi tipi di formaggio.',
      ingredients: [
        'Pasta per pizza',
        'mozzarella',
        'gorgonzola',
        'fontina',
        'parmigiano reggiano (o pecorino)',
        'olio extravergine di oliva',
        'sale'
      ],
      picURL:
          'https://cdn.tasteatlas.com/images/recipes/946f07b7b5ec4f23a6fea58a2ac72650.jpg'),
  PizzaModel(
      name: 'Pizza Napoletana',
      calories: '220',
      history:
          'La Pizza Napoletana, conosciuta anche come Pizza Marinara, è una delle più antiche e tradizionali pizze italiane. Originaria di Napoli, è stata consumata dai marinai per la sua semplicità e rapidità di preparazione.',
      ingredients: [
        'Pasta per pizza',
        'salsa di pomodoro',
        'aglio',
        'origano',
        'olio extravergine di oliva',
        'sale'
      ],
      picURL:
          'https://www.saporinostri.it/wp-content/uploads/2020/10/le-origini-della-pizza-napoletana-e1601990439881.jpg'),
  PizzaModel(
      name: 'Pizza Prosciutto e Funghi',
      calories: '250',
      history:
          'Questa pizza è una variante della classica Pizza Margherita, arricchita con prosciutto cotto e funghi. È un\'aggiunta amatissima in Italia che combina il sapore delicato del prosciutto con quello terroso dei funghi.',
      ingredients: [
        'Pasta per pizza',
        'salsa di pomodoro',
        'mozzarella',
        'prosciutto cotto',
        'funghi champignon',
        'olio extravergine di oliva',
        'sale'
      ],
      picURL:
          'https://c8.alamy.com/comp/2BN6G6G/pizza-prosciutto-e-funghi-traditional-italian-oven-baked-dough-with-toppings-tomato-sauce-mozzarella-ham-mushrooms-simple-brown-wooden-table-res-2BN6G6G.jpg'),
  PizzaModel(
      name: 'Pizza Bianca al Prosciutto Crudo',
      calories: '270',
      history:
          'La pizza bianca si differenzia dalle altre pizze per l\'assenza della salsa di pomodoro. Il prosciutto crudo aggiunto dopo la cottura offre un contrasto di sapori e consistenze, risultando in una scelta raffinata e molto apprezzata.',
      ingredients: [
        'Pasta per pizza',
        'mozzarella',
        'prosciutto crudo',
        'rucola',
        'scaglie di parmigiano reggiano',
        'olio extravergine di oliva',
        'sale'
      ],
      picURL:
          'https://assets.bonappetit.com/photos/57b21ab853e63daf11a4f25c/master/pass/mare_pizza_bianca_with_prosciutto_arugula_and_parmesan_h.jpg'),
  PizzaModel(
      name: 'Pizza al Tonno e Cipolla',
      calories: '260',
      history:
          'La pizza al tonno e cipolla è una combinazione molto popolare in Italia, specialmente come pizza da asporto. Il gusto deciso del tonno si sposa perfettamente con la dolcezza della cipolla caramellata.',
      ingredients: [
        'Pasta per pizza',
        'salsa di pomodoro',
        'mozzarella',
        'tonno sott\'olio',
        'cipolla',
        'olio extravergine di oliva',
        'sale'
      ],
      picURL:
          'https://www.tasteatlas.com/images/dishes/06fb0374204f4cf1bc636a4deb517976.jpg')
];
