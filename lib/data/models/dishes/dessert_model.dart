import 'package:italian_food/data/models/dishes/dish_model.dart';

class DessertModel extends Dish {
  DessertModel(
      {required super.name,
      required super.calories,
      required super.history,
      required super.ingredients,
      super.category = 'desserte',
      required super.picURL});
}

final desserts = [
  DessertModel(
      name: 'Tiramisù',
      calories: '240',
      history:
          'Il Tiramisù è uno dei dessert più famosi d\'Italia, con origini contese tra Veneto e Friuli Venezia Giulia. Il suo nome significa "tirami su" (pick me up) a causa della presenza di caffè. È un dolce al cucchiaio a strati, conosciuto e amato in tutto il mondo.',
      ingredients: [
        'Savoiardi',
        'caffè espresso',
        'mascarpone',
        'uova',
        'zucchero',
        ' cacao in polvere',
        'liquore (opzionale, come Marsala o caffè)'
      ],
      picURL:
          'https://www.culinaryhill.com/wp-content/uploads/2020/09/Tiramisu-Recipe-Culinary-Hill-LR-03-1024x1536.jpg'),
  DessertModel(
      name: 'Panna Cotta',
      calories: '270',
      history:
          'La Panna Cotta è un dessert piemontese che significa "panna cotta". È un dolce semplice a base di panna, zucchero e gelatina, spesso servito con una salsa di frutti di bosco o caramello.',
      ingredients: [
        'Panna',
        'zucchero',
        'gelatina in fogli',
        'estratto di vaniglia',
        'salsa di frutti di bosco o caramello'
      ],
      picURL:
          'https://www.laurasbakery.nl/wp-content/uploads/2019/09/rood-fruit-panna-cotta-1a.jpg'),
  DessertModel(
      name: 'Cannoli Siciliani',
      calories: '350',
      history:
          'I Cannoli sono una celebrazione della pasticceria siciliana. Originariamente preparati per il Carnevale, sono diventati un simbolo della dolceria siciliana. Consistono in croccanti gusci di pasta fritta ripieni di una crema a base di ricotta.',
      ingredients: [
        'Farina',
        'vino',
        'zucchero',
        'strutto',
        'ricotta',
        'cioccolato',
        'canditi',
        'zucchero a velo',
        'oli vegetali per friggere'
      ],
      picURL:
          'https://www.molinocolombo.it/wp-content/uploads/2022/08/Mc-Post-i-dolci-dell-estate-CANNOLO-SICILIANO-NS.jpg'),
  DessertModel(
      name: 'Gelato Italiano',
      calories: '200',
      history:
          'Il Gelato è una forma di arte dolciaria italiana con radici che risalgono alla Roma antica e al Rinascimento. È famoso per la sua consistenza morbida e cremosa e viene prodotto in una varietà infinita di gusti.',
      ingredients: [
        'Panna',
        'latte',
        'zucchero',
        'eventuali aromi o additivi naturali come frutta, nocciole, cioccolato'
      ],
      picURL:
          'https://www.italiangelato.info/imgpub/1852969/1000/0/gelato-tradizionale-italiano.webp'),
  DessertModel(
      name: 'Zabaglione',
      calories: '200',
      history:
          'Lo Zabaglione è un dolce al cucchiaio del Piemonte, noto per il suo sapore ricco e la consistenza soffice. Tradizionalmente servito caldo, è una crema a base di tuorli d\'uovo, zucchero e vino Marsala.',
      ingredients: ['Tuorli d\'uovo', 'zucchero', 'vino Marsala'],
      picURL:
          'https://www.foodandwine.com/thmb/TczKeTVAONyl8WaBUrmP3hnPAek=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/2012-r-xl-zabaglione-with-strawberries_0-f4876bda34c14df2a4738ffcb1257c66.jpg'),
  DessertModel(
      name: 'Torta Caprese',
      calories: '450',
      history:
          'La Torta Caprese è un dolce al cioccolato e mandorle originario dell\'isola di Capri. Si dice che sia stata creata per errore quando un pasticcere dimenticò di aggiungere la farina al suo dolce, creando così un dessert deliziosamente umido e denso.',
      ingredients: [
        'Cioccolato fondente',
        'burro',
        'zucchero',
        'mandorle tritate',
        'uova'
      ],
      picURL:
          'https://www.billyparisi.com/wp-content/uploads/2019/03/chocolate-cake-2.jpg'),
  DessertModel(
      name: 'Crostata di Frutta',
      calories: '230',
      history:
          'La Crostata di Frutta è un dessert tradizionale presente in tutta Italia, spesso consumato durante le feste e le celebrazioni. La base di pasta frolla è riempita con crema pasticcera e guarnita con frutta fresca di stagione.',
      ingredients: [
        'Pasta frolla (farina, burro, zucchero, uova)',
        'crema pasticcera',
        'frutta fresca (fragole, kiwi, pesche, ecc.)',
        'gelatina per lucidare'
      ],
      picURL:
          'https://www.unafiabaincucina.it/wp-content/uploads/2021/07/IMG_1588.jpg'),
  DessertModel(
      name: 'Semifreddo',
      calories: '300',
      history:
          'Il Semifreddo è un dessert congelato che si trova in diverse varianti regionali in Italia. A metà strada tra un gelato e una mousse, il suo nome significa "mezzo freddo" e può essere realizzato con diversi sapori.',
      ingredients: [
        'Panna',
        'tuorli d\'uovo',
        'zucchero',
        'aromi come vaniglia, cioccolato, frutta o nocciole'
      ],
      picURL:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Semifreddo_nocciola.jpg/1024px-Semifreddo_nocciola.jpg'),
  DessertModel(
      name: 'Biscotti di Prato (Cantucci)',
      calories: '400',
      history:
          'I Cantucci, conosciuti anche come Biscotti di Prato, sono biscotti toscani croccanti con mandorle intere. Tradizionalmente si consumano a fine pasto insieme a un bicchiere di Vin Santo, in cui si intingono i biscotti prima di mangiarli.',
      ingredients: [
        'Farina',
        'zucchero',
        'mandorle',
        'uova',
        'lievito',
        'estratto di vaniglia',
        'scorza di limone'
      ],
      picURL:
          'https://blog.giallozafferano.it/piattiprontiinunattimo/wp-content/uploads/2016/11/cantucci-o-biscotti-di-prato-.jpg')
];
