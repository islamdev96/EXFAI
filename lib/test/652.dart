import 'package:flutter/material.dart';

class CustomSnackBar extends SnackBar {
  const CustomSnackBar({
    super.key,
    required super.content,
    Color super.backgroundColor =
        Colors.black, // Set your desired background color
    SnackBarBehavior super.behavior = SnackBarBehavior.floating,
    double super.elevation = 6.0,
    EdgeInsetsGeometry super.margin =
        const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 24.0),
    super.shape,
    bool widthMatches = false,
    super.duration,
    super.action,
    super.animation,
  });
}

void showCustomSnackBar(BuildContext context) {
  const snackBar = CustomSnackBar(
    content: Text('Your message here'),
    backgroundColor: Colors.blue, // Set your desired background color
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
