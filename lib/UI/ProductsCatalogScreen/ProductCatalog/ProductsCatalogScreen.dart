import 'dart:ffi';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:elevate_flutter_task/UI/ProductsCatalogScreen/ProductCatalog/ProductCardWidget/ProductCardWidget.dart';
import 'package:flutter/material.dart';
import '../../../Model/Product.dart';

class ProductsCatalogScreen extends StatelessWidget {
  static const routeName = "home";

  const ProductsCatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var product = Product();

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Image.asset(
                "assets/images/Group 11.png",
                height: 22,
                width: 66,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 320,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      width: 1,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "What do you search for?",
                      hintStyle:
                          Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w300,
                              ),
                      // Remove underline and add prefix icon
                      prefixIcon: Icon(
                        Icons.search,
                        color: Theme.of(context).colorScheme.onPrimary,
                        size: 30,
                      ),
                      border: InputBorder
                          .none, // Remove underline and default border
                    ),
                  ),
                ),
                Icon(
                  Icons.shopping_cart_outlined,
                  size: 24,
                  color: Theme.of(context).colorScheme.onPrimary,
                )
              ],
            ),
          ],
        ),
        toolbarHeight: MediaQuery.of(context).size.height * 0.12,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                mainAxisExtent: 230,
              ),
              itemBuilder: (context, index) {
                return ProductCardWidget();
              },
            ),
          )
        ],
      ),
    );
  }
}
