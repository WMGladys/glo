import 'package:flutter/material.dart';
import 'package:glo/models/makeup.dart';
import 'package:provider/provider.dart';
import 'package:glo/models/cart.dart';
import 'package:glo/pages/paymentPage.dart';

class CartItem extends StatefulWidget {
  MakeUp makeUpCart;
  CartItem({super.key, required this.makeUpCart});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  
  //remove item from cart
  void removeItemFromCart(){
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.makeUpCart);
  }
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        //navigate to payment page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PaymentPage()),
        );
      },
      child: Container(
        decoration: BoxDecoration(color: Colors.pink[100], borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.only(bottom: 10),
        child: ListTile(
          leading: Image.asset(widget.makeUpCart.imagePath),
          title: Text(widget.makeUpCart.name),
          subtitle: Text(widget.makeUpCart.price),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: removeItemFromCart,
          ),
        ),
      ),
    );
  }
}
