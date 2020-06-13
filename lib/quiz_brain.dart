import 'package:quizzler/question.dart';

class QuizBrain {
//  properties
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the fast.', true),
    Question('A slug\'s blood is green.', true),
    Question('Eve was the first man on earth.', false),
    Question('Humans breath through their lungs.', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber += 1;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isEnded() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    }

    return false;
  }
}
