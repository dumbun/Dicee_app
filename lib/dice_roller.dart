import 'dart:math';
import 'package:flutter/material.dart';

//! for random numbers
final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  //? roll dise function
  var currentDice = 2;

  void rollDice() {
    var randomNumber = random.nextInt(6) + 1;
    setState(() {
      currentDice = randomNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Column(
            children: [
              Image.asset(
                "assets/images/dice-$currentDice.png",
                width: 200,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 28.0,
                  ),
                ),
                onPressed: rollDice,
                child: const Text("Roll Dice"),
              )
            ],
          ),
        ),
      ],
    );
  }
}
