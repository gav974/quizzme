import 'Question.dart';


class QuizzBrain{
 String finishQuizz = "false";

var _increment = 0 ; //équivaut à QuestionNumber

 final List<Question> _question = [
  Question(q:"La durée d'un jour est exactement de 24 heures",a:false),
  Question(q:"La dengue est une maladie transmise par la piqure d'une tique.",a:false),
 Question(q:"Le premier Etre vivant à partir dans l'Espace est la chienne Laika, envoyée par les Américains.",a:false),
 Question(q:"L' Est de l'Espagne est bordée par l'Océan Atlantique.",a:false),
 Question(q:"Quand la chèvre crie, elle baguette.",a:true),
 Question(q:"La soeur de mon frère, est aussi ma soeur.",a:true),
 Question(q:"Etienne joue à Counter strike",a:false),
 Question(q:"La tomate est un légume.",a:false),
 Question(q:"Le requin-nourrice aspire ses proies.",a:true),
 Question(q:"L'alphabet arabe contient 26 lettres.",a:false),
  ];



 void finishIncrement() {
  if (_increment >= _question.length - 1) finishQuizz = "true";
 }


 void nextQuestion() {
  if (_increment < _question.length - 1) _increment++;}

 String getQuestionText() {
  return _question[_increment].question;
 }

 bool getAnswerText() {
  return _question[_increment].answer;
 }
 String getFinish() {
  return finishQuizz;
 }


}