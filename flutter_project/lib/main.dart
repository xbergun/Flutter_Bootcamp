import 'package:flutter/material.dart';
import 'package:flutter_project/week2/posts_json_place_holder/posts_json_place_holder.dart';
import 'package:flutter_project/week2/statefull/home_statefull_view.dart';
import 'package:flutter_project/week3/core/food_dashboard/food_dashboard_view.dart';
import 'package:flutter_project/week3/core/theme/light_theme.dart';
import 'package:flutter_project/week3/food_card/food_card_view.dart';

import 'week3/food_card/food_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: FoodCard(),
      theme: LightTheme.instance.data,
    );
  }
}
