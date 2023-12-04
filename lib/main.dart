import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_polygon/flutter_polygon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

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

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: 160.0,
        width: 300.0,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(meatImage), fit: BoxFit.cover)),
        child: Stack(
          children: <Widget>[
            Container(
              height: 160.0,
              width: 300.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black.withOpacity(0.1), Colors.black],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Spacer(),
                  Text(
                    '25% OFF',
                    style: TextStyle(
                        color: textYellow,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        letterSpacing: 1.1),
                  ),
                  const Text(
                    'ON FIRST 3 ORDERS',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        letterSpacing: 1.1),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SelectTypeSection extends StatelessWidget {
  const SelectTypeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
                child: Container(
              height: 92.0,
              width: 120.0,
              color: greenLight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.solidStarHalf,
                    color: green,
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Special Menu',
                    style: TextStyle(color: green, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )),
            Container(
              height: 92.0,
              width: 120.0,
              color: redLight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.solidClock,
                    color: red,
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Book a Table',
                    style: TextStyle(color: red, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Container(
              height: 92.0,
              width: 124.0,
              color: blueLight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.solidFaceLaugh,
                    color: blue,
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Caterings',
                    style: TextStyle(color: blue, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MenuItemsList extends StatelessWidget {
  const MenuItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Popular Dishes',
            style: TextStyle(fontSize: 22.0, color: Colors.black54),
          ),
          SizedBox(
            height: 16.0,
          ),
          MenuItem(),
          MenuItem(),
        ],
      ),
    );
  }
}

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

// class ItemCard extends StatelessWidget {
//   const ItemCard({
//     Key? key,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 8.0),
//       child: Container(
//           height: 160.0,
//           width: 300.0,
//           decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: NetworkImage(meatImage), fit: BoxFit.cover)),
//           child: Stack(
//             children: <Widget>[
//               Container(
//                 height: 160.0,
//                 width: 300.0,
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                         colors: [Colors.black.withOpacity(0.1), Colors.black],
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter)),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Spacer(),
//                     Text(
//                       '25% OFF',
//                       style: TextStyle(
//                           color: textYellow,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 24.0,
//                           letterSpacing: 1.1),
//                     ),
//                     Text(
//                       'ON FIRST 3 ORDERS',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16.0,
//                           letterSpacing: 1.1),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           )),
//     );
//   }
// }

// IMAGES
var meatImage = 'https://i.ibb.co/5FRwHtB/unnamed.jpg';
var foodImage = 'https://i.ibb.co/qk6PzDy/London-broil.jpg';
var burgerImage =
    'https://images.unsplash.com/photo-1534790566855-4cb788d389ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';
var chickenImage =
    'https://images.unsplash.com/photo-1532550907401-a500c9a57435?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';
// COLORS
var textYellow = const Color(0xFFf6c24d);
var iconYellow = const Color(0xFFf4bf47);
var green = const Color(0xFF4caf6a);
var greenLight = const Color(0xFFd8ebde);
var red = const Color(0xFFf36169);
var redLight = const Color(0xFFf2dcdf);
var blue = const Color(0xFF398bcf);
var blueLight = const Color(0xFFc1dbee);
