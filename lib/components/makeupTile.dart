//This class creates a card to display an item, in this case makeup, with its attributes
import 'package:flutter/material.dart';
import 'package:glo/models/makeUp.dart';

class MakeupTile extends StatelessWidget {
  MakeUp makeUp;
  MakeupTile({super.key, required this.makeUp});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          //picture
          Image.asset(makeUp.imagePath),
          //description

          //price

          //button to add to cart
        ],
      ),
    );
  }
}
