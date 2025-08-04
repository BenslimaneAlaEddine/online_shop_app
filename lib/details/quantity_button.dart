import 'package:flutter/material.dart';

class QuantityButton extends StatelessWidget {
  final Widget icon;

  final VoidCallback press;

  const QuantityButton({super.key,required this.icon, required this.press});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 42,
      child: OutlinedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
          ),
          onPressed: press,
          child: icon),
    );
  }
}