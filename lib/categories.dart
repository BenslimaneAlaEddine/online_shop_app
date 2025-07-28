import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constants.dart';

class CategoriesState extends StatefulWidget {
  const CategoriesState({super.key});

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<CategoriesState> {
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: 30.h,
        child: ListView.builder(
            // physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return buildCategory(index);
            }),
      ),
    );
  }

  Widget buildCategory(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: GestureDetector(onTap: (){
        setState(() {
          currentIndex=index;
        });
      },
        child: FittedBox(fit: BoxFit.scaleDown,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                categories[index],
                style:
                TextStyle(fontWeight: FontWeight.bold, color:currentIndex == index ? kTextColor: kTextLightColor,fontSize: 14.sp.clamp(10.sp, 18.sp),),
              ),
              Container(
                margin: const EdgeInsets.only(top: kDefaultPaddin / 4),
                height: 2.h,
                width: 30.w,
                color:currentIndex == index ? Colors.black : Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}