import 'package:flutter/material.dart';
import 'package:lear_flutter/dice_roller.dart';
import 'package:lear_flutter/text_widget.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key,
      required this.gradientColorPrimary,
      required this.gradientColorSecondary});

  final Color gradientColorPrimary;
  final Color gradientColorSecondary;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [gradientColorPrimary, gradientColorSecondary],
            begin: startAlignment,
            end: endAlignment,
            transform: const GradientRotation(-10.0)),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
