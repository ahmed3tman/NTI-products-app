import 'package:app5/core/product_mdel.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final ProductMdel product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details', style: TextStyle(fontSize: 30)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                product.imageUrl,
                width: 400,
                height: 400,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Text(
              product.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            Center(
              child: Text(
                product.description,
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
