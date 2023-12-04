import 'package:flutter/material.dart';
import 'package:flutter_food_app/components/food_list_view.dart';
import 'package:flutter_food_app/components/menus/menu_items_lists.dart';
import 'package:flutter_food_app/components/my_action_button.dart';
import 'package:flutter_food_app/components/my_app_bar.dart';
import 'package:flutter_food_app/components/select_type_section.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const MyActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const MyAppbar(),
      body: Container(
        child: ListView(
          children: const <Widget>[
            SizedBox(
              height: 16.0,
            ),
            MyAppbar(),
            SizedBox(
              height: 16.0,
            ),
            FoodListView(),
            SizedBox(
              height: 16.0,
            ),
            SelectTypeSection(),
            SizedBox(
              height: 16.0,
            ),
            MenuItemsList()
          ],
        ),
      ),
    );
  }
}
