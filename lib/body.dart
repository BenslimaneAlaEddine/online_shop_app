import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/main.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    print("screenHeight $screenHeight"); print("screenWidth $screenWidth");
    print("20.sp =${20.sp}");
    print("50.h ${50.h}");print("50.w ${50.w}");
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(kDefaultPaddin),
          child: Text(
            "Women",
            style: TextStyle(fontSize: 40.sp)
            // Theme.of(context)
            //     .textTheme
            //     .titleLarge
            //     ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class CategoriesState extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<CategoriesState> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.sp,
    );
  }
}
