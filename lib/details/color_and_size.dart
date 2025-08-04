import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/Product.dart';

class ColorAndSize extends StatefulWidget {
  ColorAndSize({
    super.key,
    required this.product,
  });

  final Product product;
  final List<Color> color = [Colors.blue, Colors.orangeAccent, Colors.grey];

  @override
  State<ColorAndSize> createState() => _ColorAndSizeState();
}

class _ColorAndSizeState extends State<ColorAndSize> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Color"),
                Row(
                  children: List.generate(
                      widget.color.length,
                      (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                setState(() {
                                  selected = index;
                                });
                              });
                            },
                            child: ColorDot(
                                color: widget.color[index],
                                selected: selected,
                                index: index),
                          )),
                ),
              ],
            ),
          ),
          Expanded(
            child: RichText(
                text: TextSpan(
                    text: "Size\n",
                    style: const TextStyle(color: kTextColor),
                    children: [
                  TextSpan(
                    text: "\$${widget.product.size} cm",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.bold, color: kTextColor),
                  )
                ])),
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  ColorDot({
    super.key,
    required this.color,
    required this.selected,
    required this.index,
  });

  final Color color;

  final int selected;

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 10,
        top: 5,
      ),
      padding: const EdgeInsets.all(2.5),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            // width: 1,
            color: selected == index ? color : Colors.transparent,
          )),
      height: 24,
      width: 24,
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
