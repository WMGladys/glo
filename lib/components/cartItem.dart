import 'package:flutter/material.dart';
import 'package:glo/models/makeUp.dart';

class CartItem extends StatefulWidget {
  MakeUp makeUp;
  CartItem({super.key, required this.makeUp});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.makeUp.imagePath),
      title: Text(widget.makeUp.name),
      subtitle: Text(widget.makeUp.price),
    );
  }
}
