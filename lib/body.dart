import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/Product.dart';

import 'categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;
    // print("screenHeight $screenHeight");
    // print("screenWidth $screenWidth");
    // print("20.sp =${20.sp}");
    // print("50.h ${50.h}");
    // print("50.w ${50.w}");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "Women",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const CategoriesState(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: Items(),
          ),
        ),
      ],
    );
  }
}

class Items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
      child: GridView.builder(
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:size.width < 400 ? 2: 3,
            mainAxisExtent: 250,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 180,
                  width: 160,
                  decoration: BoxDecoration(
                      color: products[index].color,
                      borderRadius: const BorderRadius.all(Radius.circular(16))),
                  child: Image.asset(
                    products[index].image,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
                  child: Text(products[index].title),
                ),
                Text(
                  "\$${products[index].price}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            );
          }),
    );
  }
}
