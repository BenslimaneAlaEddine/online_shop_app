import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/Product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    super.key,
    required this.product,
    required this.size,
  });

  final Product product;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: kDefaultPaddin,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  text: TextSpan(children: [
                    const TextSpan(text: "Price\n"),
                    TextSpan(
                        text: "\$${product.price}\n",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ])),
              const SizedBox(
                width: kDefaultPaddin,
              ),
              size.height > size.width
                  ? Expanded(
                child: Hero(
                  tag: product.id,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.contain,
                    // height: 210,
                  ),
                ),
              )
                  : Flexible(
                child: Image.asset(
                  product.image,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
