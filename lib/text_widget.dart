import 'package:flutter/material.dart';

const double fontSize = 28.0;

class TextWidget extends StatelessWidget 
{
  const TextWidget(this._text, {super.key});
  final String _text;

  @override
  Widget build(context)
  {
    return  Text(
          _text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: fontSize,
          ),
        );
  }

}