import 'package:elevate_flutter_task/UI/ProductsCatalogScreen/ProductCatalog/ProductCardWidget/ProductDetailsDesign/ProductDetailsDesign.dart';
import 'package:elevate_flutter_task/UI/ProductsCatalogScreen/ProductCatalog/ProductCardWidget/ProductImageDesign/ProductImageDesign.dart';
import 'package:flutter/material.dart';

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
