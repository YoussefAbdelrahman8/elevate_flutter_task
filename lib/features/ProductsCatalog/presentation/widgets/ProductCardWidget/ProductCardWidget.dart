import 'package:flutter/material.dart';

import 'ProductDetailsDesign/ProductDetailsDesign.dart';
import 'ProductImageDesign/ProductImageDesign.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      borderOnForeground: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side:  BorderSide(
          color:Theme.of(context).colorScheme.onPrimary.withOpacity(0.3),
          width: 2,
        ),
      ),
      child: const Column(
        children: [ProductImageDesign(), ProductDetailsDesign()],
      ),
    );
  }
}
