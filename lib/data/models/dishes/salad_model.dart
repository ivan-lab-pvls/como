import 'package:italian_food/data/models/dishes/dish_model.dart';

class Salad extends Dish {
  Salad(
      {required super.name,
      required super.calories,
      required super.history,
      required super.ingredients,
      super.category = 'Insalate',
      required super.picURL});
}

final salads = [
  Salad(
      name: 'Insalata Caprese',
      calories: '150',
      history:
          'L\'Insalata Caprese ha origine sull\'isola di Capri. Simbolo della cucina italiana, rappresenta i colori della bandiera italiana con il rosso del pomodoro, il bianco della mozzarella e il verde del basilico. È un piatto estivo, leggero e fresco.',
      ingredients: [
        'Pomodori maturi',
        'mozzarella di bufala',
        'basilico fresco',
        'olio extravergine di oliva',
        'sale',
        'pepe nero'
      ],
      picURL:
          'https://assets.epicurious.com/photos/628ba560cf19fbfe9137ffa4/1:1/w_960,c_limit/Caprese_RECIPE_051922_34205.jpg'),
  Salad(
      name: 'Insalata di Rucola, Pera e Parmigiano',
      calories: '120',
      history:
          'Questa insalata unisce la piccantezza della rucola con la dolcezza della pera e il sapore deciso del parmigiano. È una combinazione di sapori e texture che rispecchia la creatività della cucina italiana moderna.',
      ingredients: [
        'Rucola',
        'pere mature ma sode',
        'scaglie di parmigiano reggiano',
        'noci tostate',
        'olio extravergine di oliva',
        'aceto balsamico',
        'sale',
        'pepe'
      ],
      picURL:
          'https://www.giallozafferano.it/images/ricette/171/17185/foto_hd/hd650x433_wm.jpg'),
  Salad(
      name: 'Panzanella Toscana',
      calories: '90',
      history:
          'La Panzanella è un\'antica ricetta toscana. Originariamente era il piatto dei contadini, che riutilizzavano il pane raffermo bagnandolo in acqua e aceto e aggiungendovi verdure fresche dell\'orto. Oggi è un\'insalata estiva rinfrescante e nutriente.',
      ingredients: [
        'Pane raffermo',
        'pomodori',
        'cetrioli',
        'cipolla rossa',
        'basilico',
        'aceto di vino rosso',
        'olio extravergine di oliva',
        'sale',
        'pepe'
      ],
      picURL:
          'https://media-assets.lacucinaitaliana.it/photos/63c51857ca014b53c4624115/3:2/w_1500,h_1000,c_limit/panzanella.jpg'),
  Salad(
      name: 'Insalata di Farro con Verdure',
      calories: '140',
      history:
          'Il farro è un cereale antico utilizzato nella dieta mediterranea per millenni. Questa insalata è un piatto completo e salutare, dove il farro si combina con le verdure per creare un pasto equilibrato, perfetto per le giornate calde.',
      ingredients: [
        'Farro',
        'pomodorini',
        'cetrioli',
        'peperoni',
        'rucola',
        'cipolla rossa',
        'olive',
        'feta',
        'olio extravergine di oliva',
        'succo di limone',
        'sale',
        'pepe'
      ],
      picURL:
          'https://media-assets.lacucinaitaliana.it/photos/64807ccedf89789948e8c02e/16:9/w_2560%2Cc_limit/GettyImages-1166485619.jpg'),
  Salad(
      name: 'Insalata di Polpo',
      calories: '75',
      history:
          'L\'insalata di polpo è un piatto tradizionale delle regioni costiere italiane, soprattutto in Sicilia e in Sardegna. Si prepara con polpo bollito fino a renderlo tenero, poi condito con ingredienti semplici che esaltano il sapore del mare.',
      ingredients: [
        'Polpo',
        'patate',
        'prezzemolo',
        'aglio',
        'succo di limone',
        'olio extravergine di oliva',
        'sale',
        'pepe'
      ],
      picURL:
          'https://media-assets.lacucinaitaliana.it/photos/61fd3affd964447f7f1327eb/16:9/w_1280,c_limit/Insalata-di-polpo-ceci-finocchi-e-arancia1.jpg'),
  Salad(
      name: 'Insalata di Mare',
      calories: '100',
      history:
          'L\'Insalata di Mare è un classico antipasto delle feste, soprattutto nelle regioni costiere d\'Italia. Questa insalata ricca di frutti di mare celebra il sapore del mare e viene tradizionalmente servita fredda, condita con limone e olio extravergine di oliva.',
      ingredients: [
        'Misto di frutti di mare (calamari, gamberetti, polipo, cozze)',
        'aglio',
        'prezzemolo',
        'limone',
        'olio extravergine di oliva',
        'sale',
        'pepe'
      ],
      picURL:
          'https://www.giallozafferano.it/images/211-21160/Insalata-di-mare_650x433_wm.jpg'),
  Salad(
      name: 'Insalata di Ceci e Tonno',
      calories: '180',
      history:
          'Questa insalata semplice ma nutriente combina la tradizione delle leguminose con il gusto del tonno, un ingrediente molto utilizzato nella dieta mediterranea. È un piatto equilibrato e saziante, perfetto per un pasto veloce ma completo.',
      ingredients: [
        'Ceci cotti',
        'tonno sott\'olio sgocciolato',
        'cipolla rossa',
        'prezzemolo',
        'aceto di vino bianco',
        'olio extravergine di oliva',
        'sale',
        'pepe'
      ],
      picURL:
          'https://i0.wp.com/www.ricettealvolo.it/wp-content/uploads/2022/11/Insalata-di-tonno-e-ceci.jpg?fit=750%2C1000&ssl=1'),
  Salad(
      name: 'Insalata Tricolore',
      calories: '200',
      history:
          'Ispirata dai colori della bandiera italiana, l\'Insalata Tricolore è un piatto semplice ma delizioso. La dolcezza del pomodoro, la cremosità della mozzarella e l\'amarognolo della rucola creano un equilibrio di sapori che rappresenta l\'essenza della cucina italiana.',
      ingredients: [
        'Rucola',
        'pomodori',
        'mozzarella di bufala',
        'basilico',
        'olio extravergine di oliva',
        'sale',
        'pepe'
      ],
      picURL:
          'https://www.panningtheglobe.com/wp-content/uploads/2013/04/Tricolore-salad-two.jpg'),
  Salad(
      name: 'Insalata di Orzo con Verdure Grigliate',
      calories: '120',
      history:
          'L\'orzo è un cereale versatile e nutriente, spesso utilizzato nelle insalate estive in Italia. In abbinamento con verdure grigliate, questa insalata diventa un piatto ricco di sapori e texture, ideale per un pasto leggero ma saziante.',
      ingredients: [
        'Orzo perlato',
        'melanzane',
        'zucchine',
        'peperoni',
        'pomodorini',
        'cipolla rossa',
        'olio extravergine di oliva',
        'aceto balsamico',
        'basilico',
        'sale',
        'pepe'
      ],
      picURL:
          'https://www.accademianutrizione.it/images/blog/2023/ricetta-orzo-verdure-grigliate/verdura-griglia-piatto.jpg'),
  Salad(
      name: 'Insalata di Finocchi e Arance',
      calories: '70',
      history:
          'Questa insalata fresca e croccante è tipica della cucina siciliana. L\'abbinamento di finocchi e arance è un classico che sfrutta la dolcezza degli agrumi e il sapore anisato dei finocchi per creare un contrasto piacevole e rinfrescante.',
      ingredients: [
        'Finocchi',
        'arance',
        'olive nere',
        'cipolla rossa',
        'prezzemolo',
        'olio extravergine di oliva',
        'sale',
        'pepe'
      ],
      picURL:
          'https://images.fidhouse.com/fidelitynews/wp-content/uploads/sites/6/2017/12/1514459216_dd6837752c5efa412647bede6840b39e882dffe5-1514458794.jpg?width=1280&height=720&quality=80')
];
