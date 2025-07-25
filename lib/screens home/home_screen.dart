import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app/constants.dart';

import '../body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: Body());
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/back.svg")),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/search.svg",color: kTextColor,),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/cart.svg",color: kTextColor,),
          ),
          const SizedBox(
            width: kDefaultPaddin / 2,
          ),
        ],
      );
  }
}
