import 'package:flutter/material.dart';

import '../constants.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.color,
      required this.onPressed,
      required this.text,
      this.minWidth,
      this.height});

  final Color color;
  final void Function() onPressed;
  final String text;
  final double? minWidth;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: minWidth,
      height: height,
      onPressed: onPressed,
      color: color,
      child: Text(
        text),
    );
  }
}
