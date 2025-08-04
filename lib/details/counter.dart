import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app/constants.dart';

import 'favorite_button.dart';
import 'outline_button_add_and_sub_counter.dart';

class CounterAndFavorit extends StatefulWidget {
  @override
  _CounterAndFavorite createState() => _CounterAndFavorite();
}

class _CounterAndFavorite extends State<CounterAndFavorit> {
  int counter = 1;
  Color color = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            QuantityButton(
                icon: const Text(
                  "-",
                  style: TextStyle(
                    fontSize: 18,
                    color: kTextColor,
                  ),
                ),
                press: () {
                  if (counter > 0) {
                    setState(() {
                      counter--;
                    });
                  }
                }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                counter.toString().padLeft(2, "0"),
                style: const TextStyle(fontSize: 20),
              ),
            ),
            QuantityButton(
                icon: const Text(
                  "+",
                  style: TextStyle(
                    fontSize: 18,
                    color: kTextColor,
                  ),
                ),
                press: () {
                  setState(() {
                    counter++;
                  });
                })
          ],
        ),
        FavoriteButton(
          color: color,
          press: () {
            color == Colors.grey
                ? setState(() {
                    color = Colors.red;
                  })
                : setState(() {
                    color = Colors.grey;
                  });
          },
        )
      ],
    );
  }

// GestureDetector favoriteButton() {
//   return GestureDetector(
//     onTap: () {
//       color == Colors.grey
//           ? setState(() {
//               color = Colors.red;
//             })
//           : setState(() {
//               color = Colors.grey;
//             });
//     },
//     child: CircleAvatar(
//         backgroundColor: color,
//         child: SvgPicture.asset(
//           "assets/icons/heart.svg",
//           color: Colors.white,
//         )),
//   );
// }

// SizedBox buildOutlinButton(
//     {required Text icon, required VoidCallback press}) {
//   return SizedBox(
//     height: 32,
//     width: 42,
//     child: OutlinedButton(
//         style: ButtonStyle(
//           padding: MaterialStateProperty.all(EdgeInsets.zero),
//         ),
//         onPressed: press,
//         child: icon),
//   );
// }
}
