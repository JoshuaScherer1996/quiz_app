import 'package:flutter/material.dart';

class BasicInterface extends StatelessWidget {
  const BasicInterface({super.key});
//comment
  @override
  Widget build(context) {
    return Column(
      children: [
        const SizedBox(
          height: 150,
        ),
        Image.asset(
          'assets/images/quiz-logo.png',
        ),
        const SizedBox(
          height: 60,
        ),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        ElevatedButton(
          onPressed: () {
            //implement event later on
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
          ),
          child: const Text('Start Quiz'),
        ),
      ],
    );
  }
}
