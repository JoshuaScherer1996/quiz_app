// quiz_question.dart
// Defines the QuizQuestion class, representing a single quiz question with its answers.

class QuizQuestion {
  // Constructor for initializing QuizQuestion with question text and a list of answers.
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  // Getter to retrieve a shuffled list of answers.
  // This is used to randomize the order of answers each time the question is presented.
  List<String> get shuffledAnswers {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
