import 'package:flutter/material.dart';
import 'package:glo/models/makeUp.dart';

class CartItem extends StatefulWidget {
  MakeUp makeUpCart;
  CartItem({super.key, required this.makeUpCart});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.makeUpCart.imagePath),
      title: Text(widget.makeUpCart.name),
      subtitle: Text(widget.makeUpCart.price),
    );
  }
}
