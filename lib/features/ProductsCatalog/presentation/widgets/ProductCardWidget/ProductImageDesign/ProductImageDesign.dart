import 'package:elevate_flutter_task/core/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'ProductImage.dart';

class ProductImageDesign extends StatelessWidget {
  final String image;

  const ProductImageDesign({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        ProductImage(
          image: image,
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundColor: ColorManager.lightTertiary,
            radius: 18,
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/..png",
                  ),
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
