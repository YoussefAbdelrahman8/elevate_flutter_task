import 'package:flutter/material.dart';

class ProductCatalogAppBar extends StatelessWidget {
  const ProductCatalogAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
