// Feel free to use the code in your projects but do not forget to give me the credits adding my app (Flutter Animation Gallery) where you are gonna use it.

// ------------------------------------------

// import this Package in pubspec.yaml file
// dependencies:
//
//   particles_flutter:

import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

class MyCustomWidget extends StatelessWidget {
  const MyCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.red,
      body: CircularParticle(
        width: w,
        height: h,
        awayRadius: w / 5,
        numberOfParticles: 150,
        speedOfParticles: 1.5,
        maxParticleSize: 7,
        particleColor: Colors.white.withOpacity(.7),
        awayAnimationDuration: const Duration(milliseconds: 600),
        awayAnimationCurve: Curves.easeInOutBack,
        onTapAnimation: true,
        isRandSize: true,
        isRandomColor: false,
        connectDots: true,
        // randColorList: [
        // Colors.red.withAlpha(210),
        // Colors.white.withAlpha(210),
        // Colors.yellow.withAlpha(210),
        // Colors.green.withAlpha(210),
        // ],
        enableHover: true,
        hoverColor: Colors.black,
        hoverRadius: 90,
      ),
    );
  }
}
