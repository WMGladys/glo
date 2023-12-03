//This page displayes items in the cart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:glo/models/cart.dart';
import 'package:glo/components/favouriteItem.dart';
import 'package:glo/models/makeup.dart';
import 'package:glo/pages/makeupPage.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart> (builder: (context, value, child) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //heading
          const Text(
            'My Fav',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),

          SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              itemCount: value.getUserLiked().length,
              itemBuilder: (context, index){
                //get individual item
                MakeUp likedMakeup = value.getUserLiked()[index];
                //return the cart item
                return FavouriteItem(makeUpLiked: likedMakeup);
              },
            ),
          ),
        ],
      ),
    ),
    );
  }
}

//< > ()  : {} _ $ + & ? % !