import 'package:app5/core/extensin.dart';
import 'package:app5/core/list_product.dart' as ProductMdel;
import 'package:app5/features/auth/view/screen/age.dart';
import 'package:app5/features/screen/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.calculate),
        onPressed: () {
          context.pushNav(AgeCalc());
        },
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20),

        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 7 / 10,
        ),
        itemCount: ProductMdel.products.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductCard(product: ProductMdel.products[index]);
        },
      ),
    );
  }
}
