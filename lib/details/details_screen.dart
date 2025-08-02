import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app/body.dart';
import 'package:online_shop_app/models/Product.dart';

import '../constants.dart';
import 'detaisls_body.dart';

class Details extends StatelessWidget {
  final Product product;
  late Size oldSize;

  Details({super.key, required this.product, required this.oldSize});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final Orientation orint = MediaQuery.of(context).orientation;
    print(size.height);
    print(size.width);
    print("Details build() called");
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: DetailsBody(size: size, product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            color: Colors.white,
          )),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: kDefaultPaddin / 2,
        ),
      ],
    );
  }
}



