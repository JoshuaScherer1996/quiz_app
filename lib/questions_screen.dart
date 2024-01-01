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

//docu
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
          AnswerButton(
            answerText: currentquestion.answers[0],
            onTap: () {},
          ),
          AnswerButton(
            answerText: currentquestion.answers[1],
            onTap: () {},
          ),
          AnswerButton(
            answerText: currentquestion.answers[2],
            onTap: () {},
          ),
          AnswerButton(
            answerText: currentquestion.answers[3],
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
