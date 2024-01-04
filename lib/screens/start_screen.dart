// start_screen.dart
// Represents the StartScreen StatelessWidget, the initial screen of the quiz app.
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class StartScreen extends StatelessWidget {
  // Constructor for StartScreen, takes a function to initiate the quiz.
  const StartScreen(this.startQuiz, {super.key});

  /* Variable allows us to create a pointer that points towards a void function 
  with no args. Used in the constructor with this keyword */
  final void Function() startQuiz;

  @override
  Widget build(context) {
    // Centered layout with quiz logo, title, and start button.
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            // Used colors to add a transparcy. Helpful to avoid opacity Widget.
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(225, 237, 223, 252),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
