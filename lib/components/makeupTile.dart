//This class creates a card to display an item, in this case makeup, with its attributes
import 'package:flutter/material.dart';
import 'package:glo/models/makeup.dart';

class MakeupTile extends StatelessWidget {
  MakeUp makeUp;
  void Function()? onTap;
  MakeupTile({super.key, required this.makeUp, required this.onTap});

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
        children: [
          //icons to like and add items
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //like icon
              GestureDetector(
                onTap: (){
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Success!'),
                      content: Text('Item liked'),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Icon(Icons.favorite_border),
                    ),
                  ],
                ),
              ),

              //add to cart icon
              GestureDetector(
                onTap: onTap,
                child: Column(
                  children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Icon(Icons.add_shopping_cart),
                      ),
                  ],
                ),
              ),
            ],
          ),

          //picture
          Container(
            width: 280, //same as tile width
            height: 220,
            child: Transform.translate(
              offset: Offset(0.0, -100.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(
                    image: AssetImage(makeUp.imagePath),
                    fit: BoxFit.fill,
                  ),
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

          Container(
            child: Transform.translate(
              offset: Offset(0.0, -70),
              child: Column(
                children: [
                  //Text(makeUp.name),
                  Text(makeUp.description, style: TextStyle(fontSize: 18),),
                  Text('Ksh. ' + makeUp.price, style: TextStyle(fontSize: 18),),
                ],
              ),
            ),

          ),
        ],
      ),
    );
  }
}
