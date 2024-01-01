import 'package:flutter/material.dart';
import 'answer_button.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'the question.',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: 'Placeholder 1',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'Placeholder 2',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'Placeholder 3',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
