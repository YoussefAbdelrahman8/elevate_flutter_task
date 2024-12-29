import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CachedNetworkImage(
      height: height * 0.15,
      width: double.infinity,
      fit: BoxFit.fill,
      imageUrl:
      "https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg",
      placeholder: (context, url) =>
      const CircularProgressIndicator(),
      errorWidget: (context, url, error) =>
      const Icon(Icons.error),
    );
  }
}
