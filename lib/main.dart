import 'package:flutter/material.dart';
import 'package:lear_flutter/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          gradientColorPrimary: Color.fromRGBO(149, 117, 205, 1),
          gradientColorSecondary: Color.fromRGBO(255, 112, 67, 1),
        ),
      ),
    ),
  );
}
