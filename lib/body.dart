import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop_app/constants.dart';

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
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: Text(
              "Women",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const CategoriesState(),
        ],
      ),
    );
  }
}

class CategoriesState extends StatefulWidget {
  const CategoriesState({super.key});

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<CategoriesState> {
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return SingleChildScrollView(child: buildCategory(index)); // SingleChildScrollView to Avoid Overflow in ListView
          }),
    );
  }

  Widget buildCategory(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            categories[index],
            style:
                 TextStyle(fontWeight: FontWeight.bold, color: kTextColor,fontSize: 14.sp,),
          ),
          Container(
            margin: const EdgeInsets.only(top: kDefaultPaddin / 4),
            height: 2.h,
            width: 30.w,
            color:Colors.black,
          ),
        ],
      ),
    );
  }
}
