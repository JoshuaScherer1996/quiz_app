import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 27, 5, 65),
          Color.fromARGB(255, 61, 9, 97),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
