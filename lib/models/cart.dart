//This is class to create the template of a cart
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glo/models/makeup.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Cart extends ChangeNotifier{

  // final CollectionReference makeupCollection =
  // FirebaseFirestore.instance.collection('products');

  // List<MakeUp> makeupShop = [];

  //dummy list of makeup products for sale
  List <MakeUp>makeupShop = [
    MakeUp(
      imagePath: 'lib/images/blush.png',
      name: 'Item 1 ',
      description: 'This is a description for item 1',
      price: '1500'
    ),
    MakeUp(
        imagePath: 'lib/images/brush.png',
        name: 'Item 2 ',
        description: 'This is a description for item 2',
        price: '1100'
    ),
    MakeUp(
        imagePath: 'lib/images/hair-shampoo.png',
        name: 'Item 3 ',
        description: 'This is a description for item 3',
        price: '1700'
    ),
    MakeUp(
        imagePath: 'lib/images/lipstick.png',
        name: 'Item 4 ',
        description: 'This is a description for item 4',
        price: '1500'
    ),
    MakeUp(
        imagePath: 'lib/images/lotion.png',
        name: 'Item 5 ',
        description: 'This is a description for item 5',
        price: '500'
    ),
    MakeUp(
        imagePath: 'lib/images/perfume.png',
        name: 'Item 6 ',
        description: 'This is a description for item 6',
        price: '300'
    ),
  ];

  //list of items in the user's cart
  List<MakeUp> userCart = [];

  //list of items in the user's favorites
  List<MakeUp> userLiked = [];

  //getter method for list of shoes for sale
  List<MakeUp> getMakeupList(){
    return makeupShop;
  }

  //getter method for cart items
  List<MakeUp> getUserCart(){
    return userCart;
  }

  //getter method for favorites items
  List<MakeUp> getUserLiked(){
    return userLiked;
  }

  //method to add items to the cart
  void addItemToCart(MakeUp makeUp){
    userCart.add(makeUp);
    notifyListeners();
  }

  //method to remove items from the cart
  void removeItemFromCart(MakeUp makeUp){
    userCart.remove(makeUp);
    notifyListeners();
  }

  //method to add items to the favorites
  void addItemToLiked(MakeUp makeUp){
    userLiked.add(makeUp);
    notifyListeners();
  }
  //method to remove items from the liked
  void removeItemFromLiked(MakeUp makeUp){
    userLiked.remove(makeUp);
    notifyListeners();
  }

  // Future<void> fetchMakeupFromFirestore() async {
  //   try {
  //     QuerySnapshot querySnapshot = await makeupCollection.get();
  //     makeupShop = querySnapshot.docs
  //         .map((doc) => MakeUp.fromFirestore(doc.data() as Map<String, dynamic>))
  //         .toList();
  //     notifyListeners();
  //   }catch (e) {
  //     print('Error fetching makeup from Firestore: $e');
  //   }
  // }
}

//< > ()  : {} _ $ + & ? % !
