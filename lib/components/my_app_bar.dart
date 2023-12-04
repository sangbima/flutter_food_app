import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: 60.0,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Column(
                children: <Widget>[
                  Icon(Icons.home),
                  Text(
                    'Home',
                    style: TextStyle(fontSize: 12.0),
                  )
                ],
              ),
              const Column(
                children: <Widget>[
                  Icon(Icons.search, color: Colors.black45),
                  Text(
                    'Search',
                    style: TextStyle(fontSize: 12.0),
                  )
                ],
              ),
              Container(
                width: 100.0,
              ),
              const Column(
                children: <Widget>[
                  Icon(Icons.shop, color: Colors.black45),
                  Text(
                    'Whislist',
                    style: TextStyle(fontSize: 12.0),
                  )
                ],
              ),
              const Column(
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.black45,
                  ),
                  Text(
                    'Cart',
                    style: TextStyle(fontSize: 12.0),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
