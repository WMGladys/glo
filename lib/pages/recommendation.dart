import 'dart:math';

class Product {
  final String id;
  final String name;
  final description;
  final double price;

  Product({required this.id, required this.name, required this.description, required this.price});
}

class User {
  final List<Product> viewedProducts;
  final List<Product> purchasedProducts;

  User({required this.viewedProducts, required this.purchasedProducts});
}

class RecommendationAlgorithm {
  final List<Product> allProducts;
  final List<User> allUsers;

  RecommendationAlgorithm({required this.allProducts, required this.allUsers});

  List<Product> contentBasedRecommendation(User user) {
    return allProducts
        .where((product) => user.viewedProducts.any((viewedProduct) => product.description.contains(viewedProduct.description.first)))
        .toList();
  }

  List<Product> ruleBasedRecommendation(User user) {
    return allProducts
        .where((product) => user.purchasedProducts.any((purchasedProduct) => product.price <= purchasedProduct.price * 1.5))
        .toList();
  }

  List<Product> hybridRecommendation(User user) {
    final contentBased = contentBasedRecommendation(user);
    final ruleBased = ruleBasedRecommendation(user);

    // Weighted combination - equal weight for simplicity
    final combinedRecommendations = [...contentBased, ...ruleBased];
    combinedRecommendations.shuffle(); // Shuffle to add randomness

    return combinedRecommendations;
  }
}
