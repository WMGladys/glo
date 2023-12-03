//This is a class to navigate among the buttons in the navigation bar.
import 'package:flutter/material.dart';
import 'package:glo/components/bottomNavBar.dart';
//import 'package:glo/pages/navigationPage.dart';
//import 'package:glo/responsiveness/mobileMode/home.dart';
import 'package:glo/pages/makeupPage.dart';
import 'package:glo/pages/cartPage.dart';
import 'package:glo/pages/favouritesPage.dart';
import 'package:glo/pages/settings.dart';
import 'package:glo/models/cart.dart';

class NavigationPage extends StatefulWidget {

  NavigationPage({Key? key}) : super(key: key);
  // final Cart cart = Cart(); // Create an instance of Cart

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {

  //This integer keeps track of the selected index of the navigation bar
  int _selectedIndex = 0;
  //this method updates the selected index when the user taps on the bottom bar
  void navigateBottomBar(int index)
  {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display when bottomNav buttons have been pressed.
  final List<Widget> _pages = [
    //home page
    const MakeupPage(),
    //favourites page
    const FavouritesPage(),
    //cart page
    const CartPage(),
    //settings page
    const Settings(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.pinkAccent),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
            );
          }
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[200],
        child: Column(
          //this pushes the logout button to the bottum
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: DrawerHeader(child: Text('Glo', style: TextStyle(color: Colors.pink, fontSize: 42.0, fontWeight: FontWeight.bold))),
                ),
                //create space after the logo
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(color: Colors.pink,),
                ),
                //other icons/pages
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(leading: Icon(Icons.folder, color: Colors.black,), title: Text('Categories', style: TextStyle(color: Colors.black),),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(leading: Icon(Icons.book, color: Colors.black,), title: Text('blog', style: TextStyle(color: Colors.black),),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(leading: Icon(Icons.info, color: Colors.black,), title: Text('About', style: TextStyle(color: Colors.black),),),
                ),
              ],
            ),
            //logo

            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(leading: Icon(Icons.exit_to_app, color: Colors.black,), title: Text('Log out', style: TextStyle(color: Colors.black),),),
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}

//< > ()  : {} _ $ + & ? % !