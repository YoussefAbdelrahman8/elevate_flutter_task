import 'package:elevate_flutter_task/features/ProductsCatalog/domain/entities/ProductEntity.dart';
import 'package:flutter/material.dart';

import 'ProductDetailsDesign/ProductDetailsDesign.dart';
import 'ProductImageDesign/ProductImageDesign.dart';

class ProductCardWidget extends StatelessWidget {
  ProductEntity product;

  ProductCardWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      borderOnForeground: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.3),
          width: 2,
        ),
      ),
      child: Column(
        children: [
          ProductImageDesign(
            image: product.image ?? "",
          ),
          ProductDetailsDesign(
            product: product,
          ),
        ],
      ),
    );
  }
}
