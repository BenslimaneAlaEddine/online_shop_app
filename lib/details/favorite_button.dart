import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavoriteButton extends StatelessWidget {
  final Color color;

  final VoidCallback press;

  const FavoriteButton({super.key, required this.color, required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: CircleAvatar(
        backgroundColor: color,
        child: SvgPicture.asset(
          "assets/icons/heart.svg",
          color: Colors.white,
        ),
      ),
    );
  }
}