import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../UserDetails.dart';

class BusinessCardPage extends StatelessWidget {
  BusinessCardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        sizedImage('assets/images/gru_headshot.jpg'),
        Text(name),
        Text(role),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            tappableText(phone, _launchWrapper, 'sms:' + phone),
            tappableText(website, _launchWrapper, 'https://' + website)
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

_launchWrapper(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
