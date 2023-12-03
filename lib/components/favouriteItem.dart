import 'package:flutter/material.dart';
import 'package:glo/models/makeup.dart';
import 'package:provider/provider.dart';
import 'package:glo/models/cart.dart';
import 'package:glo/pages/paymentPage.dart';
import 'package:glo/pages/card.dart';

class FavouriteItem extends StatefulWidget {
  MakeUp makeUpLiked;
  FavouriteItem({super.key, required this.makeUpLiked});

  @override
  State<FavouriteItem> createState() => _CartItemState();
}

class _CartItemState extends State<FavouriteItem> {

  //remove item from liked
  void removeItemFromLiked(){
    Provider.of<Cart>(context, listen: false).removeItemFromLiked(widget.makeUpLiked);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        //navigate to payment page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CardPage()),
        );
      },
      child: Container(
        decoration: BoxDecoration(color: Colors.pink[100], borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.only(bottom: 10),
        child: ListTile(
          leading: Image.asset(widget.makeUpLiked.imagePath),
          title: Text(widget.makeUpLiked.name),
          subtitle: Text(widget.makeUpLiked.price),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: removeItemFromLiked,
          ),
        ),
      ),
    );
  }
}
