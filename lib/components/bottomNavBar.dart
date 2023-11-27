//This is a class to create the bottom navigation
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        child: GNav(
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.pink.shade900,
          gap: 8, //space from the vertical edge
          padding: EdgeInsets.all(16),
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(icon: Icons.home_filled, text: 'Home'),
            GButton(icon: Icons.favorite_border_rounded, text: 'favourites'),
            GButton(icon: Icons.shopping_cart, text: 'cart'),
            GButton(icon: Icons.settings, text: 'settings'),
          ],
        ),
      ),
    );
  }
}
//< > ()  : {} _ $ + & ? % !