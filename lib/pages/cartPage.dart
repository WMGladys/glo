//This page displayes items in the cart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:glo/models/cart.dart';
import 'package:glo/components/cartItem.dart';
import 'package:glo/models/makeup.dart';
import 'package:glo/pages/makeupPage.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart> (builder: (context, value, child) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //heading
          const Text(
            'My Cart',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),

          SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index){
                //get individual item
                MakeUp individualMakeup = value.getUserCart()[index];
                //return the cart item
                return CartItem(makeUpCart: individualMakeup);
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