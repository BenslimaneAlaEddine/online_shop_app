import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app/models/Product.dart';

import '../constants.dart';

class Details extends StatelessWidget{
  final Product product;

  const Details({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
            onPressed: () {Navigator.pop(context);},
            icon: SvgPicture.asset("assets/icons/back.svg",color: Colors.white,)),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/search.svg",color: Colors.white,),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/cart.svg",color: Colors.white,),
          ),
          const SizedBox(
            width: kDefaultPaddin / 2,
          ),
        ],
      ),
      body: Container(),);
  }}