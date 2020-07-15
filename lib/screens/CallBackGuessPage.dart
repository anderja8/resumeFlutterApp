import 'package:flutter/material.dart';
import 'package:resumeFlutterApp/models/CallBackGuesser.dart';
import '../models/CallBackGuesser.dart';

class CallBackGuessPage extends StatefulWidget {
  @override
  _CallBackGuessPageState createState() => _CallBackGuessPageState();
}

class _CallBackGuessPageState extends State<CallBackGuessPage> {
  CallBackGuesser cbg = CallBackGuesser();

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text('Call me ... Maybe'),
      GestureDetector(
        onTap: () {
          setState(() {
            cbg.setAnswer();
          });
        },
        child: Text('Ask a question ... Tap for the answer'),
      ),
      Text('${cbg.answer}')
    ]);
  }
}
