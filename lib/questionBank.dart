import 'question.dart';

class QuestionBank {
  int _questionNumber = 0;
  final List<Question> _questions = [
    Question(q: 'Pluto is classified as a planet.', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'The Mona Lisa was painted by Leonardo da Vinci.', a: true),
    Question(q: 'Sharks are mammals.', a: false),
    Question(q: 'Unicorn is the national animal of Scotland.', a: true),
    Question(q: 'Greenland is the largest island in the world.', a: true),
    Question(
        q: 'The heart is the largest internal organ in the body', a: false),
    Question(q: 'The most common blood type is 0- negative.', a: true),
    Question(q: 'Vatican City is the smallest country in the world.', a: true),
    Question(q: 'The speed of light is constant in all mediums.', a: false)
  ];

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestion() {
    return _questions[_questionNumber].question;
  }

  bool getCorrectAnswer() {
    return _questions[_questionNumber].answer;
  }

  bool isFinished() {
    if (_questionNumber == _questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
