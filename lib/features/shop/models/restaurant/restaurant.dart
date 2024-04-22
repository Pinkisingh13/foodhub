import 'package:foodhub/utils/constants/image_strings.dart';
import 'package:foodhub/utils/constants/text_strings.dart';

class RestaurantModel {
  RestaurantModel({
    this.id,
    required this.name,
    required this.rating,
    required this.time,
    required this.category,
    required this.image,
  });
  final int? id;
  final String name;
  final String rating;
  final String time;
  final String image;
  final List<String> category;
}

final restaurantDetails = [
  RestaurantModel(
      id: 1,
      name: PTexts.restaurantName1,
      image: PImages.restroImage1,
      rating: "4.5",
      time: "30-35 mins",
      category: ["Chinese", "Pure Veg"]),
  RestaurantModel(
      id: 2,
      name: PTexts.restaurantName2,
      image: PImages.restroImage2,
      rating: "4.8",
      time: "30-40 mins",
      category: ["Continental", "Beverages", "Chinese"]),
  RestaurantModel(
      id: 3,
      name: PTexts.restaurantName3,
      image: PImages.restroImage3,
      rating: "3.8",
      time: "30-35 mins",
      category: ["North Indian", "Chinese", "Paratha", "Rolls"]),
  RestaurantModel(
      id: 4,
      name: PTexts.restaurantName4,
      image: PImages.restroImage4,
      rating: "4.3",
      time: "30-35 mins",
      category: ["Pizza", "Desserts", "Pasta"]),
  RestaurantModel(
    id: 5,
    image: PImages.restroImage5,
    name: PTexts.restaurantName5,
    rating: "4.0",
    time: "30-35 mins",
    category: ["Burger", "Chinese", "Biryani"],
  ),

// Another List
  RestaurantModel(
      id: 6,
      name: PTexts.restaurantName6,
      image: PImages.restroImage6,
      rating: "4.5",
      time: "10-20 mins",
      category: [
        "Chinese",
        "North Indian",
        "Chole Bhature",
        "Paratha",
        "Rolls",
        "Gulab Jamun"
      ]),
  RestaurantModel(
      id: 7,
      name: PTexts.restaurantName7,
      image: PImages.restroImage7,
      rating: "4.8",
      time: "30-40 mins",
      category: [
        "Pastry",
        "Desserts",
        "Gulab Jamun",
      ]),
  RestaurantModel(
      id: 8,
      name: PTexts.restaurantName8,
      image: PImages.restroImage8,
      rating: "4.0",
      time: "30-35 mins",
      category: [
        "Pizza",
        "Chinese",
      ]),
  RestaurantModel(
      id: 9,
      name: PTexts.restaurantName9,
      image: PImages.restroImage9,
      rating: "4.3",
      time: "30-35 mins",
      category: [
        "Desserts",
        "Biryani",
        "Gulab Jamun",
        "Pastry",
        "Chole Bhature",
        "Pure Veg",
        "Rolls"
      ]),

  RestaurantModel(
      id: 10,
      name: PTexts.restaurantName10,
      image: PImages.restroImage10,
      rating: "4.8",
      time: "30-40 mins",
      category: [
        "Chinese",
        "North Indian",
        "Desserts",
        "Pastry",
        "Gulab Jamun",
        "Paratha",
        "Rolls",
      ]),
  RestaurantModel(
      id: 11,
      name: PTexts.restaurantName11,
      image: PImages.restroImage11,
      rating: "4.8",
      time: "30-40 mins",
      category: [
        "Chinese",
        "North Indian",
        "Paratha",
        "Chole Bhature",
      ]),
  RestaurantModel(
      id: 12,
      name: PTexts.restaurantName12,
      image: PImages.restroImage12,
      rating: "4.8",
      time: "30-40 mins",
      category: [
        "Chinese",
        "Rolls",
        "Momos",
        "Pizza",
      ]),
  RestaurantModel(
      id: 13,
      name: PTexts.restaurantName13,
      image: PImages.restroImage13,
      rating: "4.8",
      time: "30-40 mins",
      category: [
        "Desserts",
        "Biryani",
        "Gulab Jamun",
        "Pastry",
        "Chole Bhature",
        "Pure Veg",
        "Rolls",
        "Paratha",
      ]),
  RestaurantModel(
      id: 14,
      name: PTexts.restaurantName14,
      image: PImages.restroImage14,
      rating: "4.8",
      time: "30-40 mins",
      category: [
        "Pastry",
        "Desserts",
        "Gulab Jamun",
        "Cakes",
        "Donuts",
      ]),
  RestaurantModel(
      id: 15,
      name: PTexts.restaurantName15,
      image: PImages.restroImage15,
      rating: "4.8",
      time: "30-40 mins",
      category: [
        "Chinese",
        "North Indian",
        "Rolls",
      ]),
  RestaurantModel(
      id: 16,
      name: PTexts.restaurantName16,
      image: PImages.restroImage16,
      rating: "4.8",
      time: "30-40 mins",
      category: ["Pastry", "Desserts", "Cakes", "Donuts", "Waffels"]),
  RestaurantModel(
      id: 17,
      name: PTexts.restaurantName17,
      image: PImages.restroImage17,
      rating: "4.8",
      time: "30-40 mins",
      category: [
        "Chinese",
        "North Indian",
        "Chole Bhature",
        "Paratha",
        "Rolls",
        "Biryani"
      ]),
  RestaurantModel(
      id: 18,
      name: PTexts.restaurantName18,
      image: PImages.restroImage18,
      rating: "4.8",
      time: "30-40 mins",
      category: [
        "North Indian",
        "Chole Bhature",
        "Paratha",
        "Rolls",
        "Biryani",
        "Pure Veg",
      ]),
  RestaurantModel(
      id: 19,
      name: PTexts.restaurantName19,
      image: PImages.restroImage19,
      rating: "4.8",
      time: "30-40 mins",
      category: [
        "Chinese",
        "Rolls",
        "Biryani",
      ]),
  RestaurantModel(
      id: 20,
      name: PTexts.restaurantName20,
      image: PImages.restroImage20,
      rating: "4.8",
      time: "30-40 mins",
      category: [
        "Chinese",
        "North Indian",
        "Chole Bhature",
        "Paratha",
        "Rolls",
        "Biryani",
        "Pure Veg",
        "Gulab Jamun"
      ]),
];

// Food model

class FoodModel {
  final int? id;
  final String foodName;
  final String price;
  final String description;
  final String image;

  FoodModel({
    this.id,
    required this.foodName,
    required this.price,
    required this.description,
    required this.image, 
  });
}

final foodList = [
  FoodModel(
    id: 1,
    foodName: "Veg Noodle Soup With Burnt Garlic",
    price: "\u{20B9}${175}",
    description:
        "A Berco'S Speciality! Flat Noodles And Asian Vegetables Simmered In A Clear Broth Topped With Burnt Garlic.",
    image: PImages.bercoDish1,
  ),
  FoodModel(
    id: 1,
    foodName: "Chicken Noodle Soup With Burnt Garlic",
    price: "\u{20B9}${205}",
    description:
        "A Berco'S Speciality! Flat Noodles, Sliced Chicken And Asian Vegetables Simmered In A Clear Chicken Broth Topped With Burnt Garlic.",
    image: PImages.bercoDish2,
  ),
  FoodModel(
    id: 1,
    foodName: "Honey Chilli Chicken",
    price: "\u{20B9}${325}",
    description:
        "A Kid'S Favourite! Wok Tossed Shredded Chicken Tossed In Honey With Hint Of Chilli Oil Garnished With Sesame Seeds",
    image: PImages.bercoDish3,
  ),
  FoodModel(
    id: 1,
    foodName: "Juicy Chicken Drumsticks",
    price: "\u{20B9}${325}",
    description:
        "Serving Since 1982! Wok Tossed Chicken Lollipops Tossed In Our In House Spicy Sauce Garnished With Spring Onions.",
    image: PImages.bercoDish4,
  ),
  FoodModel(
    id: 1,
    foodName: "Crispy Tangy Button Mushrooms",
    price: "\u{20B9}${295}",
    description:
        "Finely Sliced Button Mushrooms Tossed In A Tangy Home Made Sauce With A Hint Of Chilli",
    image: PImages.bercoDish5,
  ),
  FoodModel(
    id: 1,
    foodName: "Chicken Steamed Momos (6 Pcs)",
    price: "\u{20B9}${225}",
    description:
        "Hand Minced Chicken Flavoured With Ginger And A Hint Of Black Pepper Wrapped In Freshly Rolled Flour Dough And Steamed To Perfection",
    image: PImages.bercoDish6,
  ),
  FoodModel(
    id: 1,
    foodName: "Veg Schezwan Momo",
    price: "\u{20B9}${215}",
    description:
        "Exotic Vegetables (Broccoli, Mushroom, Carrot, Babycorn) Wrapped In Freshly Rolled Flour Dough And Steamed To Perfection!",
    image: PImages.bercoDish7,
  ),
  FoodModel(
    id: 1,
    foodName: "Chicken Kung Pao Combo",
    price: "\u{20B9}${325}",
    description: "Served With Rice/Noodle",
    image: PImages.bercoDish8,
  ),
  FoodModel(
    id: 1,
    foodName: "Berco's Classic Singapore Noodles Chicken",
    price: "\u{20B9}${235}",
    description:
        "Jullienes Of Chicken Tossed With Flour Noodles In Our In House Sweet And Tangy Sauce Garnished With Spring Onion.",
    image: PImages.bercoDish9,
  ),
  FoodModel(
    id: 1,
    foodName: "Sliced Fish In Mustard Chilli Sauce",
    price: "\u{20B9}${235}",
    description: "",
    image: PImages.bercoDish10,
  ),

  // Second
  FoodModel(
    id: 1,
    foodName: "Veg Noodle Soup With Burnt Garlic",
    price: "\u{20B9}${175}",
    description:
        "A Berco'S Speciality! Flat Noodles And Asian Vegetables Simmered In A Clear Broth Topped With Burnt Garlic.",
    image: PImages.bercoDish1,
  ),
  FoodModel(
    id: 1,
    foodName: "Chicken Noodle Soup With Burnt Garlic",
    price: "\u{20B9}${205}",
    description:
        "A Berco'S Speciality! Flat Noodles, Sliced Chicken And Asian Vegetables Simmered In A Clear Chicken Broth Topped With Burnt Garlic.",
    image: PImages.bercoDish2,
  ),
  FoodModel(
    id: 1,
    foodName: "Honey Chilli Chicken",
    price: "\u{20B9}${325}",
    description:
        "A Kid'S Favourite! Wok Tossed Shredded Chicken Tossed In Honey With Hint Of Chilli Oil Garnished With Sesame Seeds",
    image: PImages.bercoDish3,
  ),
  FoodModel(
    id: 1,
    foodName: "Juicy Chicken Drumsticks",
    price: "\u{20B9}${325}",
    description:
        "Serving Since 1982! Wok Tossed Chicken Lollipops Tossed In Our In House Spicy Sauce Garnished With Spring Onions.",
    image: PImages.bercoDish4,
  ),
  FoodModel(
    id: 1,
    foodName: "Crispy Tangy Button Mushrooms",
    price: "\u{20B9}${295}",
    description:
        "Finely Sliced Button Mushrooms Tossed In A Tangy Home Made Sauce With A Hint Of Chilli",
    image: PImages.bercoDish5,
  ),
  FoodModel(
    id: 1,
    foodName: "Chicken Steamed Momos (6 Pcs)",
    price: "\u{20B9}${225}",
    description:
        "Hand Minced Chicken Flavoured With Ginger And A Hint Of Black Pepper Wrapped In Freshly Rolled Flour Dough And Steamed To Perfection",
    image: PImages.bercoDish6,
  ),
  FoodModel(
    id: 1,
    foodName: "Veg Schezwan Momo",
    price: "\u{20B9}${215}",
    description:
        "Exotic Vegetables (Broccoli, Mushroom, Carrot, Babycorn) Wrapped In Freshly Rolled Flour Dough And Steamed To Perfection!",
    image: PImages.bercoDish7,
  ),
  FoodModel(
    id: 1,
    foodName: "Chicken Kung Pao Combo",
    price: "\u{20B9}${325}",
    description: "Served With Rice/Noodle",
    image: PImages.bercoDish8,
  ),
  FoodModel(
    id: 1,
    foodName: "Berco's Classic Singapore Noodles Chicken",
    price: "\u{20B9}${235}",
    description:
        "Jullienes Of Chicken Tossed With Flour Noodles In Our In House Sweet And Tangy Sauce Garnished With Spring Onion.",
    image: PImages.bercoDish9,
  ),
  FoodModel(
    id: 1,
    foodName: "Sliced Fish In Mustard Chilli Sauce",
    price: "\u{20B9}${235}",
    description: "",
    image: PImages.bercoDish10,
  ),

  // Third
  FoodModel(
    id: 3,
    foodName: "Chicken Hakka Noodles",
    price: "\u{20B9}${250}",
    description:
        "The perfect blend of boiled chicken, long noodles, soy & chinese spices.",
    image: PImages.rendezvousDish1,
  ),
  FoodModel(
    id: 3,
    foodName: "Veg Fried Rice",
    price: "\u{20B9}${220}",
    description:
        "Rice tossed in a wok with mix veggies and spices in chinese sauces",
    image: PImages.rendezvousDish2,
  ),
  FoodModel(
    id: 3,
    foodName: "Chicken Fried Rice",
    price: "\u{20B9}${250}",
    description:
        "Juicy chicken, aromatic rice and select vegetables tossed together in a wok and finished with spring onions.",
    image: PImages.rendezvousDish3,
  ),
  FoodModel(
    id: 3,
    foodName: "Chilli Chicken Boneless",
    price: "\u{20B9}${275}",
    description:
        "Tender boneless chicken engulfed in a flavorful, tantalizing sauce that will leave your taste buds craving for more.",
    image: PImages.rendezvousDish4,
  ),
  FoodModel(
    id: 3,
    foodName: "Chicken Butter Masala",
    price: "\u{20B9}${340}",
    description:
        "Chicken simmered and cooked in smooth and delicious butter rich tomato gravy.",
    image: PImages.rendezvousDish5,
  ),
  FoodModel(
    id: 3,
    foodName: "Mutton Curry",
    price: "\u{20B9}${330}",
    description:
        "A must try, hot and spicy mutton curry in a flavourful concoction of whole spices and earthy maharashtrian essence.",
    image: PImages.rendezvousDish6,
  ),
  FoodModel(
    id: 3,
    foodName: "Chicken Biryani",
    price: "\u{20B9}${310}",
    description:
        "Flavourful seasoned basmati rice with succulent pieces of chicken in spiced gravy cooked with dum. served with onion and lemon.",
    image: PImages.rendezvousDish7,
  ),
  FoodModel(
    id: 3,
    foodName: "Butter Naan",
    price: "\u{20B9}${80}",
    description:
        "Indian bread made of maida cooked in tandoor topped with butter.",
    image: PImages.rendezvousDish8,
  ),
  FoodModel(
    id: 3,
    foodName: "Veg Manchurian",
    price: "\u{20B9}${240}",
    description:
        "Vegetables dipped in a seasoned batter, deep fried and tossed in a deliciously spicy manchurian sauce.",
    image: PImages.rendezvousDish9,
  ),
  FoodModel(
    id: 3,
    foodName: "Matar Paneer",
    price: "\u{20B9}${240}",
    description:
        "A delectable Indian dish featuring tender green peas and creamy paneer in a flavorful, aromatic gravy.",
    image: PImages.rendezvousDish10,
  ),

  // Forth
  FoodModel(
    id: 4,
    foodName: "Blazing Onion & Paprika",
    price: "\u{20B9}${359}",
    description:
        "Hot & spicy pizza with onion & red paprika toppings and a new spicy peri peri sauce on a Domino's cheesy base.",
    image: PImages.dominosDish1,
  ),
  FoodModel(
    id: 4,
    foodName: "Pizza Party for 4 (Veg) @Rs. 180 Off",
    price: "\u{20B9}${1119}",
    description:
        "Meal for 4: Regular Veg Extravaganza + Regular Indi Tandoori Paneer + Regular Farmhouse + Regular Veggie Paradise",
    image: PImages.dominosDish2,
  ),
  FoodModel(
    id: 4,
    foodName: "Party for 4 (Veg) @Rs. 130 off",
    price: "\u{20B9}${905}",
    description:
        "Meal for 4: Medium Margherita + Medium Farmhouse with Garlic Bread & 2 Pepsi",
    image: PImages.dominosDish3,
  ),
  FoodModel(
    id: 4,
    foodName: "Special Party for 4 (Veg) @Rs. 180 off",
    price: "\u{20B9}${1095}",
    description:
        "Medium Peppy Paneer + Medium Farmhouse + Garlic Bread + 2 Pepsi",
    image: PImages.dominosDish4,
  ),
  FoodModel(
    id: 4,
    foodName: "Choco Lava Cake + Pepsi",
    price: "\u{20B9}${159}",
    description:
        "Get the indulgent Choco Lava Cake & a Pepsi (475 ml) for just INR 149",
    image: PImages.dominosDish5,
  ),
  FoodModel(
    id: 4,
    foodName: "Kosha Veg Pizza",
    price: "\u{20B9}${599}",
    description:
        "A veg cheesy pizzas loaded with onion and mushroom made in the authentic Bengali Kosha recipe",
    image: PImages.dominosDish6,
  ),
  FoodModel(
    id: 4,
    foodName: "Garlic Breadsticks + Cheesy Dip",
    price: "\u{20B9}${599}",
    description:
        "Enjoy the all-time favorite Garlic Breadsticks with the indulgent Cheesy Dip",
    image: PImages.dominosDish7,
  ),
  FoodModel(
    id: 4,
    foodName: "Double Cheese Margherita Pizza",
    price: "\u{20B9}${439}",
    description:
        "A classic delight loaded with extra 100% real mozzarella cheese",
    image: PImages.dominosDish8,
  ),
  FoodModel(
    id: 4,
    foodName: "Cheese Overload",
    price: "\u{20B9}${439}",
    description:
        "Cheese Overloaded Pizza with a medley of Mozzarella, Cheddar & Ghost Pepper flavoured Cheese.",
    image: PImages.dominosDish9,
  ),
  FoodModel(
    id: 4,
    foodName: "Corn n Cheese Paratha Pizza",
    price: "\u{20B9}${209}",
    description:
        "A crazy fusion like never before. A delicious fusion of corn stuffed paratha and cheesy pizza.",
    image: PImages.dominosDish10,
  ),

  // Fifth
  FoodModel(
    id: 5,
    foodName: "Family Feast Bucket",
    price: "\u{20B9}${729}",
    description:
        "Flat 30% off on Limited time Special Bucket with 4 pc Hot & Crispy, 4 pc Peri Peri Strips, 2 Plain Rice Bowl & 2 dips (20 gms each)",
    image: PImages.kfcDish1,
  ),
  FoodModel(
    id: 5,
    foodName: "Cricket Crunch Meal",
    price: "\u{20B9}${449}",
    description:
        "Crunchy Savings of Rs. 75 & Enjoy 2pc Hot & Crispy Chicken, 4 chicken wings , 2 dips & a chilled Pepsi Black Can 300ml [serves 1-2]",
    image: PImages.kfcDish2,
  ),
  FoodModel(
    id: 5,
    foodName: "Playing 11 Chicken Meal",
    price: "\u{20B9}${599}",
    description:
        "Enjoy Special 11 meal by saving Rs. 164 on 3 Pc Chicken Leg Piece, 4 Pc Peri peri Strips & 4 Pc Hot Wings [Serves 2-4]",
    image: PImages.kfcDish3,
  ),
  FoodModel(
    id: 5,
    foodName: "Super Over Meal",
    price: "\u{20B9}${599}",
    description:
        "Favorite combo of Classic Chicken Zinger Burger, Medium French Fries & a chilled Pepsi Black Can 300ml with savings of Rs. 26 [Serves 1]",
    image: PImages.kfcDish4,
  ),
  FoodModel(
    id: 5,
    foodName: "Green Pitch Veg Meal",
    price: "\u{20B9}${499}",
    description:
        "Veg Lovers now save Rs. 252 on Veg meal of 2 Veg Zinger Burgers, 2 Veg Longers, Large Fries and a Pepsi PET 475ml [Serves 2-3]",
    image: PImages.kfcDish5,
  ),
  FoodModel(
    id: 5,
    foodName: "Popcorn Chicken Rice Bowlz & Wings Meal",
    price: "\u{20B9}${699.05}",
    description:
        "Deal Savings of Rs. 118 on 2 units of Popcorn Chicken Rice Bowlz and 8 Pc Hot Wings [Serves 3-4]",
    image: PImages.kfcDish6,
  ),
  FoodModel(
    id: 5,
    foodName: "Mixed Chicken Zinger Burger Doubles",
    price: "\u{20B9}${368.57}",
    description:
        "Save Rs.41 on Best-seller combo of American classic chicken Zinger & Indian Tandoori zinger burgers",
    image: PImages.kfcDish7,
  ),
  FoodModel(
    id: 5,
    foodName: "2 X Chicken Krisper Burgers",
    price: "\u{20B9}${259.05}",
    description: "2 delicious chicken value burgers - at a deal price",
    image: PImages.kfcDish8,
  ),
  FoodModel(
    id: 5,
    foodName: "Rice Box Meal",
    price: "130",
    description:
        "Enjoy special Veg Box Meal with savings of Rs. 101 on Veg Zinger Burger, 2 Pc Veg patty, Medium Fries & a Pepsi PET 475ml [Serves 1]",
    image: PImages.kfcDish9,
  ),
  FoodModel(
    id: 5,
    foodName: "All Chicken Box",
    price: "\u{20B9}${399}",
    description:
        "Save Rs. 107 with special Chicken Box of 2 Pc Hot & Crispy, 2 Pc Peri Peri Strips, Medium Fries & a Pepsi PET 475ml [Serves 1-2]",
    image: PImages.kfcDish10,
  ),

  // /// --- Sixth ---
  // FoodModel(
  //   id: 6,
  //   foodName: "French Fries",
  //   price: "\u{20B9}${125}",
  //   description:
  //       "Deep-fried potato wedges, best had with some tangy tomato ketchup",
  //   image: PImages.jahnabeeDish1,
  // ),
  // FoodModel(
  //   id: 6,
  //   foodName: "Chilli Paneer",
  //   price: "\u{20B9}${250}",
  //   description:
  //       "Lip smacking, deep fried paneer chunks sauteed with bell peppers and onions in a hot punchy sauce.",
  //   image: PImages.jahnabeeDish2,
  // ),
  // FoodModel(
  //   id: 6,
  //   foodName: "Vegetable Chowmein",
  //   price: "\u{20B9}${110}",
  //   description:
  //       "A delectable dish with slippery strands of noodles dressed in a flavorful sauce and tossed along with veggies and spices.",
  //   image: PImages.jahnabeeDish3,
  // ),
  // FoodModel(
  //   id: 6,
  //   foodName: "Veg Manchurian",
  //   price: "\u{20B9}${200}",
  //   description:
  //       "Vegetables dipped in a seasoned batter, deep fried and tossed in a deliciously spicy manchurian sauce.",
  //   image: PImages.jahnabeeDish4,
  // ),
  // FoodModel(
  //   id: 6,
  //   foodName: "Vegetable Biryani",
  //   price: "\u{20B9}${188}",
  //   description:
  //       "A flavorful rice dish layered with an aromatic blend of assorted vegetables, exuding a delightful aroma and tantalizing taste.",
  //   image: PImages.jahnabeeDish5,
  // ),
  // FoodModel(
  //   id: 6,
  //   foodName: "Vegetable Do Pyaza",
  //   price: "\u{20B9}${188}",
  //   description:
  //       "A succulent and flavorful vegetable delight packed with rich flavors, perfect for a satisfying main course.",
  //   image: PImages.jahnabeeDish6,
  // ),
  // FoodModel(
  //   id: 6,
  //   foodName: "Malai Kofta",
  //   price: "\u{20B9}${250}",
  //   description:
  //       "Creamy and delectable vegetable dumplings served in a rich and flavorful gravy.",
  //   image: PImages.jahnabeeDish7,
  // ),
  // FoodModel(
  //   id: 6,
  //   foodName: "Mattar Paneer",
  //   price: "\u{20B9}${263}",
  //   description: "",
  //   image: PImages.jahnabeeDish8,
  // ),
  // FoodModel(
  //   id: 6,
  //   foodName: "Vegetable Fried Rice",
  //   price: "\u{20B9}${125}",
  //   description:
  //       "Fresh veggies tossed in a pan with steamed rice and flavorful spices perfect to satisfy your hunger pangs.",
  //   image: PImages.jahnabeeDish9,
  // ),
  // FoodModel(
  //   id: 6,
  //   foodName: "Tawa Roti",
  //   price: "\u{20B9}${25}",
  //   description:
  //       "Tawa Roti: A delectable Indian bread bursting with authentic flavor and irresistible aroma",
  //   image: PImages.jahnabeeDish10,
  // ),
];
