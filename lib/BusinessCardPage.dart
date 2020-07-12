import 'package:flutter/material.dart';
import 'UserDetails.dart';

class BusinessCardPage extends StatelessWidget {
  BusinessCardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        sizedImage('assets/gru_headshot.jpg'),
        Text(name),
        Text(role),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text(phone), Text(website)],
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
