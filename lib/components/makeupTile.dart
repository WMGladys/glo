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
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //icons to like and add items
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //like icon
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Icon(Icons.favorite_border),
                  ),
                ],
              ),
              //add to cart icon
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Icon(Icons.add_shopping_cart),
                  ),
                ],
              ),
            ],
          ),

          //picture
          Container(
            child: Transform.translate(
              offset: Offset(0.0, -100.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(makeUp.imagePath)
              ),
            ),
          ),
          //description
          Container(
            child: Transform.translate(
              offset: Offset(0.0, -80),
              child: Text(
                //makeUp.description,
                makeUp.name,
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          //price
          //Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //children: [
              //column with name and price
          Container(
            child: Transform.translate(
              offset: Offset(0.0, -70),
              child: Column(
                children: [
                  //Text(makeUp.name),
                  Text(makeUp.description, style: TextStyle(fontSize: 18),),
                  Text(makeUp.price, style: TextStyle(fontSize: 18),),
                ],
              ),
            ),

          ),
              //create plus button to add to cart
              // Column(
              //   children: [
              //     Container(
              //       padding: EdgeInsets.all(20),
              //       child: Icon(Icons.add_shopping_cart),
              //     ),
              //   ],
              // ),
            //],
          //),

          //button to add to cart
        ],
      ),
    );
  }
}
