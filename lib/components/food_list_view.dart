import 'package:flutter/material.dart';
import 'package:flutter_food_app/components/item_card.dart';

class FoodListView extends StatelessWidget {
  const FoodListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SizedBox(
        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const <Widget>[
            ItemCard(),
            ItemCard(),
            ItemCard(),
            ItemCard()
          ],
        ),
      ),
    );
  }
}
