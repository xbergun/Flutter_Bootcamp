import 'package:flutter/material.dart';
import '../../../food_card/model/food_model.dart';

class FoodCardWidget extends StatelessWidget {
  final FoodModel model;
  final String randomImage = 'https://picsum.photos/200/300';

  const FoodCardWidget({Key? key, required this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(randomImage),
        title: Text(model.title),
        trailing: Text(model.money),
      ),
    );
  }
}
