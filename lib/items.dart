import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop_app/details/details_screen.dart';

import 'constants.dart';
import 'models/Product.dart';

class Items extends StatelessWidget {
  late Size oldSize;

  Items({super.key, required this.oldSize});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: size.width < 400 ? 2 : 4,
              childAspectRatio: 0.75,
              // mainAxisExtent: 200,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Item(
              product: products[index],
              oldSize: oldSize,
            );
          }),
    );
  }
}

class Item extends StatelessWidget {
  late Size oldSize;

  Item({super.key, required this.product, required this.oldSize});

  Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Details(
                  product: product,
                  oldSize: oldSize,
                )));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPaddin),
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: const BorderRadius.all(Radius.circular(16))),
              child: Hero(
                tag: product.id,
                child: Image.asset(
                  product.image,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(product.title),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
          )
        ],
      ),
    );
  }
}
