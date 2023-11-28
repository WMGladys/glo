//This is class to create the template of a cart
import 'package:flutter/cupertino.dart';
import 'package:glo/models/makeUp.dart';

class Cart extends ChangeNotifier{
  //list of makeup products for sale
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

  //getter method for list of shoes for sale
  List<MakeUp> getShoeList(){
    return makeupShop;
  }

  //getter method for cart items
  List<MakeUp> getUserCart(){
    return userCart;
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
}

//< > ()  : {} _ $ + & ? % !