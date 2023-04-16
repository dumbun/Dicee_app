import 'package:flutter/material.dart';
import 'package:diceee/gradient_container.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          colors: const [
            Color.fromARGB(255, 26, 2, 82),
            Color.fromARGB(255, 82, 11, 175),
          ],
        ),
      ),
    ),
  );
}
