import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop_app/constants.dart';

import 'categories.dart';
import 'items.dart';

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
        const Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: Items(),
          ),
        ),
      ],
    );
  }
}




