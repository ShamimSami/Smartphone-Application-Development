import 'dart:io';

class Question {
  String questionText;
  List<String> options;
  int correctAnswerIndex;

  Question(this.questionText, this.options, this.correctAnswerIndex);

  bool checkAnswer(int userAnswer) {
    return userAnswer == correctAnswerIndex;
  }
}

class Quiz {
  List<Question> questions;
  int score = 0;

  Quiz(this.questions);

  void startQuiz() {
    print("Welcome to the Quiz!\n");

    for (var i = 0; i < questions.length; i++) {
      var q = questions[i];
      print("Question ${i + 1}: ${q.questionText}");

      for (var j = 0; j < q.options.length; j++) {
        print("${j + 1}. ${q.options[j]}");
      }

      stdout.write("Enter your answer (1-${q.options.length}): ");
      int? userChoice = int.tryParse(stdin.readLineSync() ?? '');

      if (userChoice != null &&
          userChoice > 0 &&
          userChoice <= q.options.length) {
        if (q.checkAnswer(userChoice - 1)) {
          print("Correct!\n");
          score++;
        } else {
          print("Wrong! Correct answer: ${q.options[q.correctAnswerIndex]}\n");
        }
      } else {
        print("Invalid input! Skipping question.\n");
      }
    }

    print("Quiz Over! Your final score is: $score/${questions.length}");
  }
}

void main() {
  var q1 = Question("What is the capital of Bangladesh?", [
    "Dhaka",
    "Chittagong",
    "Sylhet",
    "Khulna",
  ], 0);
  var q2 = Question("Which language is used for Flutter?", [
    "Python",
    "Dart",
    "Java",
    "C++",
  ], 1);
  var q3 = Question("2 + 2 equals?", ["3", "4", "5", "6"], 1);

  var quiz = Quiz([q1, q2, q3]);
  quiz.startQuiz();
}
