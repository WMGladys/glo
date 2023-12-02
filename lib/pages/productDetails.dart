//This ia page to display details about a product in length
import 'package:flutter/material.dart';
import 'package:glo/models/makeup.dart';

class ProductDetails extends StatelessWidget {
  MakeUp makeUpProduct;
  ProductDetails({super.key, required this.makeUpProduct});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 2.0,
        title: Text(
          'Product Details',
          style: TextStyle(
            color: Colors.pink,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image
            Image.asset(makeUpProduct.imagePath),
            //name, price and description of product
            Text(makeUpProduct.name),
            Text(makeUpProduct.price),
            Text(makeUpProduct.description),
        ],
      ),
    );
  }
}



//< > ()  : {} _ $ + & ? % !