//This is a class to display products with their details
import 'package:flutter/material.dart';
import 'package:glo/pages/searchScreen.dart';
import 'package:provider/provider.dart';
import 'package:glo/components/makeupTile.dart';
import 'package:glo/models/makeup.dart';
import 'package:glo/models/cart.dart';

class MakeupPage extends StatefulWidget {
  // final Cart cart;
  const MakeupPage({Key? key}) : super(key: key);

  @override
  State<MakeupPage> createState() => _MakeupPageState();

  // factory MakeupPage.withCart(Cart cart) {
  //   return MakeupPage(cart: cart);
  // }
}

class _MakeupPageState extends State<MakeupPage> {

  // @override
  // void initState() {
  //   super.initState();
  //   // Call fetchMakeupFromFirestore when the widget is initialized
  //   widget.cart.fetchMakeupFromFirestore();
  // }

  //add makeup to cart
  void addMakeupToCart(MakeUp makeUp){
    Provider.of<Cart> (context, listen: false).addItemToCart(makeUp);
    //let the user know makeup was successfully added
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Successfully added!'),
        content: Text('Check your cart.'),
      ),
    );
  }

  //add makeup to liked
  void addMakeupToLiked(MakeUp makeUp){
    Provider.of<Cart> (context, listen: false).addItemToLiked(makeUp);
    //let the user know makeup was successfully added
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Successfully added!'),
        content: Text('Check your liked.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart> (builder: (context, value, child) => Column(
      children: [
        //search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 18),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), border: Border.all(color: Colors.pinkAccent)),
          child: InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchScreen()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('search', style: TextStyle(color: Colors.grey),),
                Icon(Icons.search, color: Colors.grey,),
              ],
            ),
          ),
        ),

        //A message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              children: [
                Text('Shop/', style: TextStyle(color: Colors.grey),),
                Text('Makeup', style: TextStyle(color: Colors.pink),),
              ],
            ),
          ),
        ),

        const SizedBox(height: 10,),

        //Content of products
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //number of columns
              crossAxisSpacing: 4.0, //space between columns
              mainAxisSpacing: 4.0, //space between rows
            ),
            itemCount: 6,
            itemBuilder: (context, index){
              //Get a makeup product from the makeupShop list
              //The list is from 0 to the item count that was specified
              MakeUp makeupObj =  value.getMakeupList()[index];
              //return the makeup object in a tile
              return MakeupTile(
                makeUp: makeupObj,
                onTap: () => addMakeupToCart(makeupObj),
                onLike: () => addMakeupToLiked(makeupObj),
              );
            },
          ),
        ),
      ],
    ),
    );
  }
}
