import 'dart:math';

class CallBackGuesser {
  final _answers = [
    'If the moon is blue, yes. Else, no.',
    'Is 0 divisible by infinity?',
    'Ask again later.',
    'You know it!',
    'I wouldn\'t count on it.',
    'Only if the day ends in \'y\'.',
    'Absolutely not.',
    'The future is still murky.',
  ];

  Random random = Random();
  String _currAnswer = "";

  void setAnswer() {
    _currAnswer = _answers[random.nextInt(8)];
  }

  String get answer => _currAnswer;
}
