//This is a class to create a product and its attributes like image, price etc.
//import 'package:glo/models/cart.dart';

class MakeUp{
  final String imagePath;
  final String name;
  final String description;
  final String price;

  MakeUp({
    required this.imagePath,
    required this.name,
    required this.description,
    required this.price,
  });

  // Factory constructor for Firestore data
  // factory MakeUp.fromFirestore(Map<String, dynamic> data) {
  //   return MakeUp(
  //     imagePath: data['imagePath'],
  //     name: data['name'],
  //     description: data['description'],
  //     price: data['price'],
  //   );
  // }

}

//< > ()  : {} _ $ + & ? % !