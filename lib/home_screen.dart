import 'package:flutter/material.dart';
import 'package:flutter_shopping_cart/widgets/product_widget.dart';
import 'package:flutter_shopping_cart/widgets/total_show_amount.dart';

import 'model/product_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Product> products = [
    Product(
      image: 'images/black.jpg',
      name: 'Cotton T-shirt',
      price: 150,
      color: 'Black',
      size: 'L',
    ),
    Product(
      image: 'images/green.jpg',
      name: 'T-shirt',
      price: 200,
      color: 'Green',
      size: 'M',
    ),
    Product(
      image: 'images/gry.jpg',
      name: 'Dev T-shirt',
      price: 250,
      color: 'Gray',
      size: 'L',
    ),
  ];

  // Shopping cart items
  List<Product> cart = [];

  // Method to add item to the cart
  void _addToCart(Product product) {
    product.quantity++;
    setState(() {
      cart.add(product);
    });
  }

  // Method to remove item from the cart
  void _removeFromCart(Product product) {
    product.quantity--;
    setState(() {
      cart.remove(product);
    });
  }

  // Calculate total cost
  double _getTotalCost() {
    return cart.fold(0.0, (sum, item) => sum + item.price * item.quantity);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Shopping Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: productWidgets(product, _addToCart, _removeFromCart),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: totalShowAmount(context, _getTotalCost),
          ),
        ],
      ),
    );
  }
}
