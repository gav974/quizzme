import 'QuizzBrain.dart';

class Question {
  late String question;

  late bool answer;

  Question(this.question, this.answer);

  Question({required String q, required bool a}) {
    questionText = q;
    questionAnswer = a;
  }
}