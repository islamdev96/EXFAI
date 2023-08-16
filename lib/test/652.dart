import 'package:flutter/material.dart';

class CustomSnackBar extends SnackBar {
  const CustomSnackBar({
    Key? key,
    required Widget content,
    Color backgroundColor = Colors.black, // Set your desired background color
    SnackBarBehavior behavior = SnackBarBehavior.floating,
    double elevation = 6.0,
    EdgeInsetsGeometry margin =
        const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 24.0),
    ShapeBorder? shape,
    bool widthMatches = false,
    Duration duration = const Duration(milliseconds: 4000),
    SnackBarAction? action,
    Animation<double>? animation,
  }) : super(
          key: key,
          content: content,
          backgroundColor: backgroundColor,
          behavior: behavior,
          elevation: elevation,
          margin: margin,
          shape: shape,
          // widthMatches: widthMatches,
          duration: duration,
          action: action,
          animation: animation,
        );
}

void showCustomSnackBar(BuildContext context) {
  const snackBar = CustomSnackBar(
    content: Text('Your message here'),
    backgroundColor: Colors.blue, // Set your desired background color
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
