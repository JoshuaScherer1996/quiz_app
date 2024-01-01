import 'package:flutter/material.dart';
import 'answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentquestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentquestion.text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          /* these buttons are called spreading. Takes the original list "aparat". 
          Meaning the objects in the list are now all values outside of a list. 
          Better example: 
          const numbers = [1, 2, 3];
          const moreNums = [numbers, 4]; [[1, 2, 3], 4]
          const moreNums = [...numbers, 4] -> [1, 2, 3, 4] */
          ...currentquestion.answers.map((answer) {
            return AnswerButton(
              answerText: answer,
              onTap: () {},
            );
          }),
        ],
      ),
    );
  }
}
