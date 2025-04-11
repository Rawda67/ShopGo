import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_app/Screens/Profile.dart';
import 'package:flutter/material.dart';
import '../Constant.dart';
import 'Cart.dart';
import 'Favourit.dart';
import 'Home.dart';
class Homestate extends StatefulWidget {
  const Homestate({super.key});

  @override
  State<Homestate> createState() => _HomestateState();
}

class _HomestateState extends State<Homestate> {
    int currentIndex = 0;
  List<Widget> widgetOption = <Widget>[
    Home(),
    Cart(),
    Favourit(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.backColor,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Constant.primaryColor,
        items: const <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.shopping_cart_outlined, size: 30),
          Icon(Icons.favorite_outline, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: widgetOption[currentIndex],
    );
  }
}
