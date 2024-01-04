// question_summary.dart
// Defines a widget to display a summary of all questions and answers in the quiz.
import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  // Constructor accepting summary data.
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    // Building a scrollable summary view.
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              // Creating a summary item for each question.
              return SummaryItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
