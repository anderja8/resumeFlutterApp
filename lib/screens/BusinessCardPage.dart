import 'package:flutter/material.dart';
//import 'package:flutter_sms/flutter_sms.dart';
import 'package:url_launcher/url_launcher.dart';
import '../UserDetails.dart';

class BusinessCardPage extends StatelessWidget {
  BusinessCardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        sizedImage('assets/gru_headshot.jpg'),
        Text(name),
        Text(role),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            tappableText(phone, openBrowser, phone),
            tappableText(website, openBrowser, website)
          ],
        )
      ],
    ));
  }
}

Widget sizedImage(String imgLocation) {
  return Flexible(
      child: FractionallySizedBox(
    widthFactor: 0.7,
    heightFactor: 0.7,
    child: Image.asset(imgLocation),
  ));
}

Widget tappableText(String text, Function tapHandler, String tapArg) {
  return GestureDetector(
    onTap: () {
      tapHandler(tapArg);
    },
    child: Text(text),
  );
}

// Taken from the example on the url_launcher package page.
// Good learning opportunity for async functions.
void openBrowser(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  }
  print('in the function');
}

/*
void openMessenger(String phoneNum) async {
  await sendSMS(message: '', recipients: [phoneNum]);
}
*/
