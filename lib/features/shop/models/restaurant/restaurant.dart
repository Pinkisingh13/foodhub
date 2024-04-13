import 'package:foodhub/utils/constants/image_strings.dart';
import 'package:foodhub/utils/constants/text_strings.dart';

class RestaurantModel {
  RestaurantModel({
    required this.name,
    required this.rating,
    required this.time,
    required this.category,
    required this.image,
  });
  final String name;
  final String rating;
  final String time;
  final String image;
  final List<String> category;
}

final restaurantDetails = [
  RestaurantModel(
      name: PTexts.restaurantName1,
      image: PImages.restroImage1,
      rating: "4.5",
      time: "30-35 mins",
      category: ["Chinese", "Thai", "asian"]),
  RestaurantModel(
      name: PTexts.restaurantName4,
      image: PImages.restroImage8,
      rating: "3.9",
      time: "30-35 mins",
      category: ["Fast Food", "Indian", "Chinese"]),
  RestaurantModel(
      name: PTexts.restaurantName8,
      image: PImages.restroImage7,
      rating: "4.8",
      time: "30-40 mins",
      category: [
        "Chinese",
        "North Indian",
      ]),
  RestaurantModel(
      name: PTexts.restaurantName9,
      image: PImages.restroImage4,
      rating: "3.8",
      time: "30-35 mins",
      category: ["Chinese", "Thai", "asian"]),
  RestaurantModel(
      name: PTexts.restaurantName18,
      image: PImages.restroImage9,
      rating: "4.3",
      time: "30-35 mins",
      category: ["Bakery", "Fast Food"]),
  RestaurantModel(
      image: PImages.restroImage6,
      name: PTexts.restaurantName13,
      rating: "4.0",
      time: "30-35 mins",
      category: ["North Indian", "Indian"]),

];
