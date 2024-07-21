import 'package:flutter/material.dart';
import 'package:lear_flutter/text_widget.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Colors.deepPurple.shade300,
              Colors.deepOrange.shade400,
            ],
            begin: startAlignment,
            end: endAlignment,
            transform: const GradientRotation(-10.0)),
      ),
      child:  const Center(
        child: TextWidget("This is my passes text now"),
      ),
    );
  }
}
