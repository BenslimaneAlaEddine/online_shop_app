import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/details/counter.dart';
import 'package:online_shop_app/details/product_title_with_image.dart';
import 'package:online_shop_app/models/Product.dart';

import 'color_and_size.dart';
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
                ColorAndSize(product: product),
                const SizedBox(
                  height: kDefaultFontSize,
                ),
                Text(product.description),
                SizedBox(
                  height: kDefaultPaddin,
                ),
                CounterAndFavorit()
              ],
            ),
          ),
          ProductTitleWithImage(product: product, size: size),
        ],
      ),
    ));
  }
}
