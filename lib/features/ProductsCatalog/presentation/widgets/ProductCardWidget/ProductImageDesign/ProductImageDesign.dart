import 'package:flutter/material.dart';
import 'ProductImage.dart';

class ProductImageDesign extends StatelessWidget {
  const ProductImageDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        const ProductImage(),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 18,
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon:  ImageIcon(
                  AssetImage("assets/images/..png",),
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
