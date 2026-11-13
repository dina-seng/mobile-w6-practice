import 'package:flutter/material.dart';

import '../product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(product.image, height: 100, width: 100),
          Text(product.title),
          Text(product.description),
        ],
      ),
    );
  }
}
