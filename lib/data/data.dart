void main() {
  String listToShow = 'Fastfoods';

  // List? func() {
  //   if (listToShow == 'Fastfoods') {
  //     // Enum names = {Fastfoods};
  //     return Fastfoods;
  //   } else if (listToShow == 'Fishes') {
  //     return Fishes;
  //   } else if (listToShow == 'Rolls') {
  //     return Rolls;
  //   } else if (listToShow == 'Meats') {
  //     return Meats;
  //   } else if (listToShow == 'Barbeque') {
  //     return Barbeque;
  //   } else if (listToShow == 'Vegetables') {
  //     return Vegetables;
  //   } else if (listToShow == 'Fruits') {
  //     return Fruits;
  //   }
  // }
}

List BannerCard = [
  '346\nUSD\nYour total savings',
  '215\nHRS\nYour time saved',
  '346\nUSD\nYour total savings',
  '215\nHRS\nYour time saved',
];

List cart = [];

List<Map> Categories = [
  {'Fastfoods': 'Fresh & Organic'},
  {'Fishes': 'From Sea'},
  {'Rolls': 'Fresh & Organic'},
  {'Meats': 'Organic'},
  {'Barbeque': 'Fresh & Organic'},
  {'Vegetables': 'organic'},
  {'Fruits': 'Fresh & Organic'},
];


Map Menu = {
  Categories[0].keys: [Fastfoods],
  Categories[1].keys: [Fishes],
  Categories[2].keys: [Rolls],
  Categories[3].keys: [Meats],
  Categories[4].keys: [Barbeque],
  Categories[5].keys: [Vegetables],
  Categories[6].keys: [Fruits],
};

List<String> Fastfoods = [
  'Zinger Burger\n20',
  'Big Mac\n25',
  'McDouble Burger\n15',
  'Firehoues Burger\n22',
  'Beef Burger\n25',
  'Grilled Cheese Sandwich\n35',
  'Egg Sandwich\n28',
  'Grilled Chicken Sandwich\n23',
  'Crispy Chicken Burger\n32',
  'Egg Sandwich\n35',
  'BBQ Chicken Pizza\n40',
  'Pepperoni Pizza\n31',
  'Sicilian Pizza\n43',
  'Malai tikka pizza\n55',
  'Cheese Pizza\n33'
];

List favs = [];
Set cartToSet = {};
List<String> Popular = [
  'Zinger Burger\n20',
  'Chicken Tikka\n18',
  'Mushroom Tikka\n14',
  'Oranges\n03',
  'Beef behari roll\n13',
  'BBQ Chicken Pizza\n40',
  'Malai tikka pizza\n55',
  'Tomatoes\n01',
  'Cheese Pizza\n33'
];

List<bool> PopularBool = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];

List Barbeque = [
  'Chicken Tikka\n18',
  'Achari Tikka\n27',
  'Malai Tikka\n14',
  'Mushroom Tikka\n14',
  'Green Tikka\n14',
  'Seekh kabab\n11',
  'Chapli kabab\n08',
  'Tandoori kabab\n12',
  'Reshmi kabab\n11',
  'Gola kabab\n12',
  'Chicken Boti\n10',
  'Beef Boti\n10',
  'Chicken Malai Boti\n14',
  'Chicken Afghani Boti\n13',
  'Beef chatak Boti\n18',
];
// =======================Rolls========================
List Rolls = [
  'Chicken Boti roll\n10',
  'Chicken Mayo roll\n13',
  'Chicken Garlic roll\n14',
  'Chicken chatni roll\n15',
  'Chicken behari roll\n18',
  'Beef Boti roll\n08',
  'Beef Mayo roll\n09',
  'Beef Garlic roll\n12',
  'Beef chatni roll\n12',
  'Beef behari roll\n13',
  'Chicken kabab roll\n14',
  'Chicken Mayo kabab roll\n10',
  'Chicken Garlic kabab roll\n10',
  'Beef kabab roll\n80',
  'Reshmi kabab roll\n04',
];

List Fishes = [
  'Salmon\n10',
  'Tuna\n10',
  'Clownfish\n12',
  'Swordfish\n12',
  'Goldfish\n18',
  'Guppy\n16',
  'Betta fish\n15',
  'Angelfish\n13',
  'Piranha\n08',
  'Trout\n06',
  'Tuna\n10',
  'Clownfish\n12',
  'Swordfish\n12',
  'Goldfish\n18',
  'Guppy\n16',
];

List Meats = [
  'Brightfarms Chicken\n05',
  'Brightfarms Beef\n07',
  'Chicken Mince\n07',
  'Beef Mince\n08',
  'Chicken Boneless\n08',
  'Beef Boneless\n10',
  'Chicken Wings\n06',
  'Mutton Chops\n10',
  'Brightfarms Beef\n07',
  'Chicken Mince\n07',
  'Beef Mince\n08',
  'Chicken Boneless\n08',
  'Beef Boneless\n10',
  'Chicken Wings\n06',
  'Mutton Chops\n10',
];

List Vegetables = [
  'Carrots\n02',
  'Broccoli\n10',
  'Spinach\n10',
  'Tomatoes\n01',
  'Cucumbers\n02',
  'Bell Peppers\n10',
  'Onions\n02',
  'Potatoes\n01',
  'Zucchini\n01',
  'Mushrooms\n01',
  'Carrots\n02',
  'Broccoli\n10',
  'Spinach\n10',
  'Tomatoes\n01',
  'Cucumbers\n02',
];

List Fruits = [
  'Apples\n02',
  'Bananas\n02',
  'Oranges\n03',
  'Strawberries\n04',
  'Grapes\n05',
  'Pineapples\n07',
  'Mangoes\n10',
  'Watermelons\n08',
  'Blueberries\n12',
  'Peaches\n10',
  'Apples\n02',
  'Bananas\n02',
  'Oranges\n03',
  'Strawberries\n04',
  'Grapes\n05',
];
