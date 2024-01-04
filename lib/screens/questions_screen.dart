// question_screen.dart
// Defines the QuestionsScreen StatefulWidget, managing the display of individual quiz questions.
import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  // Constructor to initialize QuestionsScreen with a callback for selected answers.
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  // Index to track the current question.
  var currentQuestionIndex = 0;

  // Function to handle answer selection and progress to the next question.
  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    // Retrieves the current question based on the index.
    final currentQuestion = questions[currentQuestionIndex];

    // Layout for displaying the question and answer options.
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            // Dynamically creates AnswerButton widgets for each answer.
            /* these buttons are called spreading. Takes the original list "aparat". 
            Meaning the objects in the list are now all values outside of a list. 
            Better example: 
            const numbers = [1, 2, 3];
            const moreNums = [numbers, 4]; [[1, 2, 3], 4]
            const moreNums = [...numbers, 4] -> [1, 2, 3, 4] */
            ...currentQuestion.shuffledAnswers.map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {
                  answerQuestion(answer);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
