// quiz.dart
// Defines the Quiz StatefulWidget and its corresponding State.
// Manages different screens of the quiz and handles screen transitions.
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/screens/questions_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';
import 'package:quiz_app/screens/results_screen.dart';

class Quiz extends StatefulWidget {
  // Constructor for Quiz widget.
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    // Creating state for Quiz widget.
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // A list to store selected answers.
  List<String> _selectedAnswers = [];
  // Tracks the current active screen.
  var activeScreen = 'start-screen';

  // Function to switch to the question screen.
  void switchScreen() {
    /* setState reexecutes the build method of the state class to adjust the 
    screen for changes */
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  // Function to handle answer selection and screen transition.
  void chooseAnswer(String answer) {
    _selectedAnswers.add(answer);

    // Transition to results screen after all questions are answered.
    if (_selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  // Function to restart the quiz.
  void restartQuiz() {
    setState(() {
      _selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    // Conditional rendering of screens based on the active screen.
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: _selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    // MaterialApp scaffold for the quiz app.
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
