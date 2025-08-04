import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../models/Product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: [
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side:  BorderSide(color: product.color),
              padding: EdgeInsets.zero,
              fixedSize: const Size(50, 45),
            ),
            child: SvgPicture.asset("assets/icons/add_to_cart.svg",color: product.color,),
          ),
          SizedBox(width: kDefaultPaddin,),
          Expanded(
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  backgroundColor: product.color,
                  fixedSize: const Size(50, 45)),
              child: const Text(
                "BUY NOW",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w600,fontSize: 25),
              ),
            ),
          )
        ],
      ),
    );
  }
}