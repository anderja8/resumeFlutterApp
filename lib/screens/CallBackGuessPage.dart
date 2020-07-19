import 'package:flutter/material.dart';
import 'package:resumeFlutterApp/models/CallBackGuesser.dart';
import 'package:resumeFlutterApp/screens/BusinessCardPage.dart';
import '../models/CallBackGuesser.dart';
import '../styles.dart';

class CallBackGuessPage extends StatefulWidget {
  @override
  _CallBackGuessPageState createState() => _CallBackGuessPageState();
}

class _CallBackGuessPageState extends State<CallBackGuessPage> {
  CallBackGuesser cbg = CallBackGuesser();

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      paddedText('Call me ... Maybe', Styles.standardTextStyle),
      GestureDetector(
        onTap: () {
          setState(() {
            cbg.setAnswer();
          });
        },
        child: paddedText(
            'Ask a question ... Tap for the answer', Styles.standardTextStyle),
      ),
      paddedText('${cbg.answer}', Styles.standardTextStyle)
    ]);
  }
}
