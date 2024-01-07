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

// void main() {
//   // Sample data
//   final products = [
//     Product(id: '1', name: 'Product A', categories: ['Category1'], price: 100),
//     Product(id: '2', name: 'Product B', categories: ['Category2'], price: 150),
//     Product(id: '3', name: 'Product C', categories: ['Category1'], price: 120),
//     // Add more products
//   ];
//
//   final users = [
//     User(viewedProducts: [products[0]], purchasedProducts: []),
//     User(viewedProducts: [products[1]], purchasedProducts: [products[0]]),
//     // Add more users
//   ];
//
//   // Recommendation algorithm instance
//   final recommendationAlgorithm = RecommendationAlgorithm(allProducts: products, allUsers: users);
//
//   // Sample: Get hybrid recommendations for the first user
//   final user = users[0];
//   final recommendations = recommendationAlgorithm.hybridRecommendation(user);
//
//   // Print recommendations
//   print('Hybrid Recommendations for User ${users.indexOf(user) + 1}:');
//   recommendations.forEach((product) => print('${product.name} - ${product.price}'));
// }
