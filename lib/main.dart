import 'package:flutter/material.dart';
import 'package:diceee/gradient_container.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 26, 2, 82),
            Color.fromARGB(255, 82, 11, 175),
          ],
        ),
      ),
    ),
  );
}
