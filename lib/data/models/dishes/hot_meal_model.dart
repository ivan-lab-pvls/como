import 'package:italian_food/data/models/dishes/dish_model.dart';

class HotMealModel extends Dish {
  HotMealModel(
      {required super.name,
      required super.calories,
      required super.history,
      required super.ingredients,
      super.category = 'Piatto caldo',
      required super.picURL});
}

final hotMeals = [
  HotMealModel(
      name: 'Lasagna alla Bolognese',
      calories: '166',
      history:
          ' La lasagna è un piatto ricco di storia e tradizione, originario dell\'Emilia-Romagna. Il nome "lasagna" deriva dal greco \'lasanon\' che significa pentola. La versione moderna della "lasagna alla Bolognese" è stata perfezionata nel tempo, diventando un simbolo della cucina italiana in tutto il mondo.',
      ingredients: [
        'Sfoglie di lasagna',
        'ragù alla bolognese (carne macinata, passata di pomodoro, cipolla, carota, sedano, vino rosso), besciamella (latte, burro, farina, noce moscata)',
        'parmigiano reggiano',
        'sale',
        'pepe'
      ],
      picURL:
          'https://www.thespruceeats.com/thmb/4ohvZfSWduDaU6wmTcgjjq3L2f8=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/DSC_0804-56a64f853df78cf7728c5960.jpg'),
  HotMealModel(
      name: 'Ossobuco alla Milanese',
      calories: '210',
      history:
          'L\'Osso Buco è un classico della cucina lombarda, in particolare milanese. Il piatto è composto da fette di stinco di vitello brasate lentamente con verdure e brodo. Tradizionalmente, viene servito con il gremolata e risotto alla milanese.',
      ingredients: [
        'Stinco di vitello',
        'cipolla',
        'carota',
        'sedano',
        'vino bianco',
        'brodo di carne',
        'farina',
        'burro',
        'gremolata (limone, aglio, prezzemolo)',
        'sale',
        'pepe'
      ],
      picURL:
          'https://media-cdn2.greatbritishchefs.com/media/vmgitmjg/img78337.whqc_320x231q80.webp'),
  HotMealModel(
      name: 'Saltimbocca alla Romana',
      calories: '150',
      history:
          'Il nome "Saltimbocca" significa letteralmente "salta in bocca" per il suo sapore irresistibile. Questo piatto romano combina la dolcezza del prosciutto crudo con il sapore delicato del vitello, il tutto unito da un tocco di salvia.',
      ingredients: [
        'Fettine di vitello',
        'prosciutto crudo',
        'foglie di salvia',
        'vino bianco',
        'burro',
        'olio d\'oliva',
        'sale',
        'pepe'
      ],
      picURL:
          'https://www.giallozafferano.it/images/204-20401/Saltimbocca-alla-Romana_450x300.jpg'),
  HotMealModel(
      name: 'Melanzane alla Parmigiana',
      calories: '132',
      history:
          'Le melanzane alla parmigiana sono un piatto tipico del Sud Italia, anche se la sua origine esatta è ancora dibattuta tra Campania e Sicilia. È una pietanza che celebra il sapore delle melanzane fritte, ricoperte di salsa di pomodoro, mozzarella e parmigiano.',
      ingredients: [
        'Melanzane',
        'passata di pomodoro',
        'mozzarella',
        'parmigiano reggiano',
        'basilico',
        'aglio',
        'olio di oliva',
        'sale',
        'pepe'
      ],
      picURL:
          'https://s6890.pcdn.co/wp-content/uploads/2010/08/Parmigiana.jpg'),
  HotMealModel(
      name: 'Pollo alla Cacciatora',
      calories: '190',
      history:
          'Questo piatto ha origini contadine e si preparava tradizionalmente dopo una battuta di caccia. Il "pollo alla cacciatora" è diffuso in molte regioni italiane con leggere variazioni sugli ingredienti. La versione più nota contiene pollo rosolato e poi cotto in un sugo di pomodoro e verdure.',
      ingredients: [
        'Pollo a pezzi',
        'pomodori pelati',
        'cipolla',
        'carota',
        'sedano',
        'vino rosso',
        'olio d\'oliva',
        'aglio',
        'rosmarino',
        'salvia',
        'sale',
        'pepe'
      ],
      picURL:
          'https://media-assets.lacucinaitaliana.it/photos/62a31bb27c9384b2dbd92884/1:1/w_1600%2Cc_limit/pollo-alla-cacciatora1.jpg'),
  HotMealModel(
      name: 'Risotto al Funghi Porcini',
      calories: '160',
      history:
          'Il risotto è un piatto tipico del Nord Italia, in particolare della Lombardia e del Piemonte. Il risotto ai funghi porcini è una variante autunnale, quando i porcini sono disponibili freschi. Questo piatto cremoso e aromatico è un classico amato per la sua capacità di esaltare il sapore dei funghi.',
      ingredients: [
        'Riso Arborio',
        'funghi porcini',
        'brodo di verdure',
        'cipolla',
        'aglio',
        'vino bianco',
        'burro',
        'parmigiano reggiano',
        'prezzemolo',
        'olio d\'oliva',
        'sale',
        'pepe'
      ],
      picURL:
          'https://www.ricettedalmondo.it/images/foto-ricette/r/29778-risotto-ai-funghi-porcini-ds.jpg'),
  HotMealModel(
      name: 'Ossobuco con Gremolata',
      calories: '210',
      history:
          'L\'ossobuco, una specialità milanese, si è diffuso in tutta Italia diventando un piatto celebrato. La gremolata, una miscela di prezzemolo, aglio e scorza di limone, è aggiunta alla fine della cottura per conferire freschezza e un tocco aromatico al piatto.',
      ingredients: [
        'Ossobuco di vitello',
        'farina',
        'burro',
        'cipolla',
        'carota',
        'sedano',
        'brodo di carne',
        'vino bianco',
        'gremolata (prezzemolo, scorza di limone, aglio)',
        'sale',
        'pepe'
      ],
      picURL: 'https://recipecontent.fooby.ch/16315_3-2_480-320.jpg')
];
