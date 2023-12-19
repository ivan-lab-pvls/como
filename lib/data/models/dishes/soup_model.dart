import 'package:italian_food/data/models/dishes/dish_model.dart';

class SoupModel extends Dish {
  SoupModel(
      {required super.name,
      required super.calories,
      required super.history,
      required super.ingredients,
      super.category = 'Zuppe',
      required super.picURL});
}

final soups = [
  SoupModel(
      name: 'Minestrone',
      calories: '66',
      history:
          'Il Minestrone è una ricca zuppa di verdure italiana che varia da regione a regione. Nato come piatto povero, utilizzando gli avanzi di verdure, è divenuto un classico della cucina casalinga italiana. I suoi ingredienti si sono evoluti col tempo, ma la sua essenza rimane quella di una zuppa nutriente e ristoratrice.',
      ingredients: [
        'Pomodori',
        'cipolle',
        'carote',
        'sedano',
        'fagioli borlotti',
        'zucchine',
        'cavolo',
        'patate',
        'pasta o riso',
        'aglio',
        'olio d\'oliva',
        'sale',
        'pepe'
      ],
      picURL:
          'https://www.spendwithpennies.com/wp-content/uploads/2022/02/Minestrone-Soup-SpendWithPennies-7.jpg'),
  SoupModel(
      name: 'Zuppa Toscana',
      calories: '85',
      history:
          'Originaria della Toscana, questa zuppa è conosciuta per il suo uso generoso di prodotti locali come i fagioli cannellini e il cavolo nero. Era tradizionalmente consumata dai contadini che avevano bisogno di piatti sostanziosi per affrontare lunghe giornate di lavoro.',
      ingredients: [
        'Fagioli cannellini',
        'cavolo nero',
        'patate',
        'salsiccia',
        'cipolla',
        'aglio',
        'brodo di pollo',
        'olio d\'oliva',
        'peperoncino',
        'sale',
        'pepe'
      ],
      picURL:
          'https://thedefineddish.com/wp-content/uploads/2023/02/Zuppa-Toscana-2-scaled.jpg'),
  SoupModel(
      name: 'Passato di Verdure',
      calories: '45',
      history:
          'Il passato di verdure è una crema semplice e nutriente, spesso servita durante i mesi freddi. Tradizionalmente, le famiglie italiane lo preparavano per sfruttare le verdure di stagione e fornire un pasto caldo e confortante.',
      ingredients: [
        'Carote',
        'patate',
        'zucchine',
        'cipolle',
        'sedano',
        'brodo vegetale',
        'olio d\'oliva',
        'sale',
        'pepe'
      ],
      picURL:
          'https://www.ricettedellanonna.net/wp-content/uploads/2022/03/passato-di-verdure-7.jpg'),
  SoupModel(
      name: 'Zuppa di Farro',
      calories: '100',
      history:
          'Questa zuppa ha radici antiche, consumata già dai Romani, il farro è un cereale che ha sostenuto le popolazioni italiane per secoli. La zuppa di farro è tipica dell\'Umbria e della Toscana e si caratterizza per il suo gusto rustico e la sua consistenza.',
      ingredients: [
        'Farro',
        'fagioli borlotti',
        'pomodori',
        'carote',
        'sedano',
        'cipolla',
        'aglio',
        'rosmarino',
        'brodo vegetale',
        'olio d\'oliva',
        'sale',
        'pepe'
      ],
      picURL:
          'https://blog.giallozafferano.it/marz61/wp-content/uploads/2019/01/20042F32Fzuppafagioli-1.jpg'),
  SoupModel(
      name: 'Stracciatella alla Romana',
      calories: '70',
      history:
          'Tipica della cucina romana, questa zuppa prende il nome dall\'aspetto "stracciato" dell\'uovo che si forma quando viene versato nel brodo bollente. È una zuppa leggera e digeribile, spesso servita come primo piatto durante i pasti festivi.',
      ingredients: [
        'Brodo di pollo',
        'uova',
        'parmigiano reggiano',
        'prezzemolo',
        'noce moscata',
        'sale'
      ],
      picURL:
          'https://www.seriouseats.com/thmb/ySuI_hBjcdJ60TqVty39Dhueu-o=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__2018__09__20180913-stracciatella-soup-vicky-wasik-10-b45deabf82d64d28a5667dc0c0c5338c.jpg'),
  SoupModel(
      name: 'Zuppa di Lenticchie',
      calories: '180',
      history:
          'La zuppa di lenticchie è un piatto rustico molto apprezzato in Italia, soprattutto durante i mesi invernali. Le lenticchie sono state un alimento base nella dieta mediterranea fin dai tempi antichi, e questa zuppa è spesso associata alla tradizione del cenone di Capodanno, dove si crede che mangiare lenticchie porti prosperità e fortuna.',
      ingredients: [
        'Lenticchie',
        'carote',
        'sedano',
        'cipolla',
        'aglio',
        'pomodori pelati',
        'brodo vegetale o di carne',
        'rosmarino',
        'alloro',
        'olio extravergine di oliva',
        'sale',
        'pepe'
      ],
      picURL:
          'https://staticcookist.akamaized.net/wp-content/uploads/sites/21/2022/10/10-zuppa-di-lenticchie-servire__MG_2248-1200x675.jpg'),
  SoupModel(
      name: 'Zuppa di Pesce (Cacciucco)',
      calories: '100',
      history:
          'Il Cacciucco è una tipica zuppa di pesce della cucina toscana, in particolare della zona costiera di Livorno. È un piatto povero di origini marinare, che utilizza vari tipi di pesce e frutti di mare, spesso quelli considerati meno nobili. La leggenda narra che ogni tipo di pesce aggiunto alla zuppa rappresenti una delle cinque "c" nella parola "cacciucco".',
      ingredients: [
        'Misto di pesce e frutti di mare',
        'cipolla',
        'aglio',
        'peperoncino',
        'pomodori pelati',
        'vino rosso',
        'pane tostato',
        'prezzemolo',
        'olio extravergine di oliva',
        'sale'
      ],
      picURL:
          'https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/4BB8F18D-0928-43B1-9ACB-53F8D5C37A4C/Derivates/1c0b020f-2120-4697-b9bf-e86c255bc6b3.jpg'),
  SoupModel(
      name: 'Vellutata di Zucca',
      calories: '65',
      history:
          'La vellutata di zucca è una crema soffice e confortante, molto popolare in Italia, soprattutto in autunno quando la zucca è in stagione. La zucca è apprezzata per il suo sapore dolce e la consistenza cremosa, ed è spesso arricchita con spezie come noce moscata o zenzero.',
      ingredients: [
        'Zucca',
        'brodo vegetale',
        'cipolla',
        'patate',
        'carote',
        'panna (opzionale)',
        'noce moscata',
        'olio extravergine di oliva',
        'sale',
        'pepe'
      ],
      picURL:
          'https://www.giallozafferano.it/images/22-2215/Vellutata-di-zucca_650x433_wm.jpg')
];
