import 'package:app5/core/extensin.dart';
import 'package:app5/core/product_mdel.dart';
import 'package:app5/features/screen/view/details_screen.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final ProductMdel product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNav(DetailsScreen(product: product));
      },
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            Text(product.title),

            Expanded(
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),

                child: Image.network(product.imageUrl),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(product.description),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(product.price.toString()),
                  Spacer(),

                  Icon(Icons.star_border, size: 15),
                  Icon(Icons.star_border, size: 15),
                  Icon(Icons.star, size: 15),

                  Icon(Icons.star, size: 15),

                  Icon(Icons.star, size: 15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




