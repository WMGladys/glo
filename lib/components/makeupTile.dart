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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //picture
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(makeUp.imagePath)
          ),
          //description
          Text(
              makeUp.description,
              style: TextStyle(color: Colors.black),
          ),
          //price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //column with name and price
              Column(
                children: [
                  Text(makeUp.name),
                  Text(makeUp.price),
                ],
              ),
              //create plus button to add to cart
              Container(
                padding: EdgeInsets.all(20),
                child: Icon(Icons.add_shopping_cart),
              ),
            ],
          ),

          //button to add to cart
        ],
      ),
    );
  }
}
