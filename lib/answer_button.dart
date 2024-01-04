// answer_button.dart
// Defines a custom styled ElevatedButton widget to display an answer option.
import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  // Constructor requiring answer text and tap handler.
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  // Text to be displayed on the button.
  final String answerText;
  // Function to be called on button tap.
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    // Styled ElevatedButton for quiz answers.
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: const Color.fromARGB(255, 33, 1, 95),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
