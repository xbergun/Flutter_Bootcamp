import 'package:flutter/material.dart';
import 'model/food_model.dart';

import 'food_card.dart';

abstract class FoodCardViewModel extends State<FoodCard> {
  late final List<FoodModel> foodItemList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    foodItemList = [
      FoodModel('Broccoli', '18'),
      FoodModel('Kale', '10'),
      FoodModel('Red Papper', '18'),
    ];
  }
}
