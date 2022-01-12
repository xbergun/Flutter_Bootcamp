import 'package:flutter/material.dart';
import '../core/widgets/card/food_card.dart';
import 'food_card.dart';

import '../core/localizate/application_strings.dart';
import 'food_card_view_model.dart';

class FoodCardView extends FoodCardViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: ListView.builder(
                itemBuilder: (context, index) => FoodCardWidget(
                  model: foodItemList[index],
                ),
                itemCount: foodItemList.length,
              )),
          Spacer(),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Spacer(),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildTextSubTitle(
                          ApplicationStrings.instance.subTotal, context),
                      Text('E9.30'),
                    ],
                  )),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildTextSubTitle(
                          ApplicationStrings.instance.delivery, context),
                      Text('data'),
                    ],
                  )),
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ApplicationStrings.instance.total,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text('data'),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              )),
          Expanded(
            //Butona center  dersek hepsini kaplar.
            child: buildElevatedButtonCheckout(context),
          ),
          Spacer(),
        ],
      ),
    );
  }

  Text buildTextSubTitle(String title, BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .bodyText1!
          .copyWith(color: Theme.of(context).colorScheme.onPrimary),
    );
  }

  ElevatedButton buildElevatedButtonCheckout(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Theme.of(context).hintColor),
          shape: MaterialStateProperty.all(StadiumBorder())),
      child: Center(
          child: Text(
        ApplicationStrings.instance.checkOut,
        style: TextStyle(color: Colors.white, fontSize: 24),
      )),
      onPressed: () {},
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        ApplicationStrings.instance.cartTitle,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
      ),
    );
  }
}
