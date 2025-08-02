import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/details/product_title_with_image.dart';
import 'package:online_shop_app/models/Product.dart';

import 'details_screen.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({
    super.key,
    required this.size,
    required this.product,
  });

  final Size size;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SizedBox(
      height: size.height,
      // dart lmochkil ki kant, haQ : oldSize.height.h pcq (h) tbadlat fl ki tanglab
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: size.height * 0.3),
            padding: EdgeInsets.only(
                top: size.height * 0.12,
                left: kDefaultFontSize,
                right: kDefaultFontSize),
            // color: Colors.white,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.r),
                    topRight: Radius.circular(25.r))),
            // height: size.height * 0.7,
            // width: size.width,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Color"),
                          Row(
                            children: [
                              ColorDot(
                                color: Colors.blue,
                                isSelected: true,
                              ),
                              ColorDot(
                                color: Colors.orangeAccent,
                              ),
                              ColorDot(
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: RichText(
                          text: TextSpan(
                              text: "Size\n",
                              style: const TextStyle(color: kTextColor),
                              children: [
                            TextSpan(
                              text: "\$${product.size} cm",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: kTextColor),
                            )
                          ])),
                    )
                  ],
                )
              ],
            ),
          ),
          ProductTitleWithImage(product: product, size: size),
        ],
      ),
    ));
  }
}

class ColorDot extends StatelessWidget {
  ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, top: 5),
      padding: const EdgeInsets.all(2.5),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            // width: 1,
            color: isSelected ? color : Colors.transparent,
          )),
      height: 24,
      width: 24,
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
