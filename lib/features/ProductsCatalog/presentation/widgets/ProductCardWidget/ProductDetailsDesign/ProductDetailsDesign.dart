import 'package:elevate_flutter_task/features/ProductsCatalog/domain/entities/ProductEntity.dart';
import 'package:flutter/material.dart';

class ProductDetailsDesign extends StatelessWidget {
  final ProductEntity product;

  const ProductDetailsDesign({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            overflow: TextOverflow.ellipsis,
            "${product.title?.substring(0, 12) ?? ""}\n${product.title?.substring(12) ?? ""}" ??
                "",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Padding(
            padding: EdgeInsets.only(right: width * 0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.price.toString(),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  "${((product.price ?? 0) * 2).toString()}EGP",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 11,
                      color: Theme.of(context).colorScheme.onSecondary,
                      decoration: TextDecoration.lineThrough,
                      decorationColor:
                          Theme.of(context).colorScheme.onSecondary),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                "Review (${product.rating ?? ""})",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const ImageIcon(
                AssetImage("assets/images/🦆 emoji _white medium star_.png"),
                color: Colors.yellow,
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.only(left: width * 0.05),
                  child: Icon(
                    Icons.add_circle,
                    color: Theme.of(context).colorScheme.onPrimary,
                    size: 35,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
