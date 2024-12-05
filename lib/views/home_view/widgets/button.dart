import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.onPressed,
    required this.text,
    this.horizontalPadding,
  });

  final void Function() onPressed;
  final String text;
  final double? horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding ?? 28, vertical: 12),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      onPressed: onPressed,
      color: Colors.black,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
