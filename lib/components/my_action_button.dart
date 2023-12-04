import 'package:flutter/material.dart';
import 'package:flutter_food_app/utils/const_variables.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyActionButton extends StatelessWidget {
  const MyActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      width: 100.0,
      child: ClipPolygon(
          sides: 6,
          borderRadius: 5.0,
          rotate: 90.0, // Defaults to 0.0 degree
          boxShadows: [
            PolygonBoxShadow(color: Colors.black, elevation: 1.0),
            PolygonBoxShadow(color: Colors.grey, elevation: 5.0)
          ],
          child: Container(
            color: iconYellow,
            child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(FontAwesomeIcons.book),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Menu',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  )
                ]),
          )),
    );
  }
}
