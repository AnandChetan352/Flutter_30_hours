import 'package:flutter/material.dart';
import 'package:lear_flutter/text_widget.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget 
{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() 
  {
    var diceRoll = Random().nextInt(6) +1 ; // random number between 0-5
    setState(()
    {
      currentDiceRoll = diceRoll;
      
    });
    print("rollDiceExecuted");
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/dice-$currentDiceRoll.png", width: 200),
        TextButton(
          onPressed: (rollDice),
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 10),
            foregroundColor: Colors.lightBlueAccent.shade700,
            textStyle: const TextStyle(
              fontSize: 28,
              color: Color.fromRGBO(49, 27, 146, 1),
            ),
          ),
          child: const TextWidget("Roll Dice"),
        ),
      ],
    );
  }
}
