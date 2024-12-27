import 'package:flutter/material.dart';

class ProductDetailsDesign extends StatelessWidget {
  const ProductDetailsDesign({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String x = "aslkdlk;ldksfl;kf;lsdkf;lskdf;lksdl;fk;lsdkf;lksd;lfks;df";

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            overflow: TextOverflow.ellipsis,
            "${x.substring(0, 12)}\n${x.substring(12)}" ?? "",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Padding(
            padding: EdgeInsets.only(right: width * 0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "2000",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  "4000EGP",
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
                "Review (4.6)",
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
