import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer({
    super.key,
    required this.colors,
  });

  final List<Color> colors;

  //? roll dise function
  String activeDiceimage = "assets/images/dice-2.png";

  void rollDice() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: colors,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Image.asset(
                  activeDiceimage,
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
      ),
    );
  }
}
