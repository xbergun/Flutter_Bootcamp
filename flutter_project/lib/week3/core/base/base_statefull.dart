import 'package:flutter/material.dart';
import 'package:flutter_project/week3/core/images/Image_constants%20.dart';

import '../localizate/application_strings.dart';

abstract class BaseStatefull<T extends StatefulWidget> extends State<T> {
  ApplicationStrings applicationStrings = ApplicationStrings.instance;

  TextTheme get textTheme => Theme.of(context).textTheme;
  ThemeData get theme => Theme.of(context);
  ColorScheme get colorSchema => Theme.of(context).colorScheme;

  // ImageConstants get imageConstants => ImageConstants.instance;

  double dynamichHeight(double val) => MediaQuery.of(context).size.height * val;
}
