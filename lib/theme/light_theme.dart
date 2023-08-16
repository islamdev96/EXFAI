import 'package:flutter/material.dart';

ThemeData light = ThemeData(
  fontFamily: 'Poppins',
  primaryColor: const Color(0xFFed1b24),
  brightness: Brightness.light,
  cardColor: Colors.white,
  focusColor: const Color(0xFFADC4C8),
  hintColor: const Color(0xFF52575C),
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: const ZoomPageTransitionsBuilder(),
    TargetPlatform.iOS: const ZoomPageTransitionsBuilder(),
    TargetPlatform.fuchsia: const ZoomPageTransitionsBuilder(),
  }),
);
