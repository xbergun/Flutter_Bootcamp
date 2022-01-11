import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_project/week3/core/localizate/application_strings.dart';

class IconTextWidget extends StatelessWidget {
  final String title;
  final IconData icon;


  const IconTextWidget({Key? key, required this.title, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: [
        buildIcon(context),
        buildText(context),
      ],
    );
  }

  Text buildText(BuildContext context) {
    return Text(ApplicationStrings.instance.checkOut,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: Theme.of(context).hintColor));
  }

  Icon buildIcon(BuildContext context) {
    return Icon(
        Icons.arrow_right_outlined,
        color: Theme.of(context).colorScheme.primary,
      );
  }
}
