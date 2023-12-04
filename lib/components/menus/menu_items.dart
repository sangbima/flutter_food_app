import 'package:flutter/material.dart';
import 'package:flutter_food_app/utils/const_variables.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 100.0,
            width: 100.0,
            child: Image.network(
              burgerImage,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          Container(
            child: Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: iconYellow,
                      borderRadius: BorderRadius.circular(4.0)),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    child: Row(children: <Widget>[
                      Icon(
                        Icons.star,
                        size: 15.0,
                      ),
                      Text('4.5')
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Text(
                  'Special Chicken Burger',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 200.0,
                  child: Text(
                    'Chicken, Yogurt, Red chilli, Ginger paste, Garlic paste, ...',
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
