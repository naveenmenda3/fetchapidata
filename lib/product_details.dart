// screens/product_details.dart
import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductDetails extends StatelessWidget {
  final Product product;

  ProductDetails({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(product.imageUrl),
            SizedBox(height: 16),
            Text(
              product.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('\$${product.price}', style: TextStyle(fontSize: 24)),
            SizedBox(height: 8),
            SizedBox(
              width: 350,
              child: Text(product.description,style: TextStyle(
                fontWeight: FontWeight.w400,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}